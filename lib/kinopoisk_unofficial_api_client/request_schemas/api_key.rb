# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module RequestSchemas
    class ApiKey < Base
      attribute :apiKey, Types::String
    end
  end
end
