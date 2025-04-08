# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class FilmSearchResponse < Base
      attribute :keyword, Types::String
      attribute :pagesCount, Types::Integer
      attribute :searchFilmsCountResult, Types::Integer
      attribute :films, Types::Array.of(FilmSearchResponse::Film)
      alias pages_count pagesCount
      alias search_films_count_result searchFilmsCountResult
    end
  end
end
