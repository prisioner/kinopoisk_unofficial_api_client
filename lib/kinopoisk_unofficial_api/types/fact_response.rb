# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class FactResponse < Base
      attribute :total, Types::Integer
      attribute :items, Types::Array.of(Fact)
    end
  end
end
