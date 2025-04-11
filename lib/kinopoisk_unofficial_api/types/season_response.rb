# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class SeasonResponse < Base
      attribute :total, Types::Integer
      attribute :items, Types::Array.of(Season)
    end
  end
end
