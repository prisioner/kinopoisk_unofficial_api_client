# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class DistributionResponse < Base
      attribute :total, Types::Integer
      attribute :items, Types::Array.of(Distribution)
    end
  end
end
