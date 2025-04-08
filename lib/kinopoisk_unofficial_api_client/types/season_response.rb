# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class SeasonResponse < Base
      attribute :total, Types::Integer
      attribute :items, Types::Array.of(Season)
    end
  end
end
