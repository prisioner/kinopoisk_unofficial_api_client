# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class PremiereResponse < Base
      attribute :total, Types::Integer
      attribute :items, Types::Array.of(PremiereResponseItem)
    end
  end
end
