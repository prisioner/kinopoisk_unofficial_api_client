# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Exceptions
    class ResponseError < Base
      attr_reader :response

      def initialize(response:)
        @response = response

        super("Kinopoisk Unofficial API has returned the error. (#{error_data_dump})")
      end

      def error_code
        response.status
      end

      def error_message
        data[:message] || data["message"]
      end

      def data
        @data ||= begin
          JSON.parse(response.body)
        rescue JSON::ParserError
          { error_code: response.status, uri: response.env.url.to_s }
        end
      end

      private

      def error_data_dump
        data.map { |k, v| %(#{k}: #{v.inspect}) }.join(", ")
      end
    end
  end
end
