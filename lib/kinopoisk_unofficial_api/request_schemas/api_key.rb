# frozen_string_literal: true

module KinopoiskUnofficialApi
  module RequestSchemas
    class ApiKey < Base
      attribute :apiKey, Types::String
    end
  end
end
