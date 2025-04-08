# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class AwardResponse < Base
      attribute :total, Types::Integer
      attribute :items, Types::Array.of(Award)
    end
  end
end
