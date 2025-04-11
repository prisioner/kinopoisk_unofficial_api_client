# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class DigitalReleaseResponse < Base
      attribute :page, Types::Integer
      attribute :total, Types::Integer
      attribute :releases, Types::Array.of(DigitalReleaseItem)
    end
  end
end
