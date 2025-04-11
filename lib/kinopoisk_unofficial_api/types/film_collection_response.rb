# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class FilmCollectionResponse < Base
      attribute :total, Types::Integer
      attribute :total_pages, Types::Integer
      attribute :items, Types::Array.of(FilmCollectionResponse::Item)
    end
  end
end
