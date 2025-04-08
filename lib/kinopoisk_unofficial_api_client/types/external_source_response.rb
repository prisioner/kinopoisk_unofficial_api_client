# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class ExternalSourceResponse < Base
      attribute :total, Types::Integer
      attribute :items, Types::Array.of(ExternalSourceResponse::Item)
    end
  end
end
