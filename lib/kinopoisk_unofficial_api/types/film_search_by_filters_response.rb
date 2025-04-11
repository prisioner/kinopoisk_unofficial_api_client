# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class FilmSearchByFiltersResponse < Base
      attribute :total, Types::Integer
      attribute :total_pages, Types::Integer
      attribute :items, Types::Array.of(FilmSearchByFiltersResponse::Item)
    end
  end
end
