# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class BoxOfficeResponse < Base
      attribute :total, Types::Integer
      attribute :items, Types::Array.of(BoxOffice)
    end
  end
end
