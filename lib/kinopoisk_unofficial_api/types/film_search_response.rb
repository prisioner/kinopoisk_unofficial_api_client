# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class FilmSearchResponse < Base
      attribute :keyword, Types::String
      attribute :pages_count, Types::Integer
      attribute :search_films_count_result, Types::Integer
      attribute :films, Types::Array.of(FilmSearchResponse::Film)
    end
  end
end
