# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class FilmSearchByFiltersResponse < Base
      attribute :total, Types::Integer
      attribute :totalPages, Types::Integer
      attribute :items, Types::Array.of(FilmSearchByFiltersResponse::Item)
      alias total_pages totalPages
    end
  end
end
