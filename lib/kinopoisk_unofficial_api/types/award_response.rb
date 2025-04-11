# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class AwardResponse < Base
      attribute :total, Types::Integer
      attribute :items, Types::Array.of(Award)
    end
  end
end
