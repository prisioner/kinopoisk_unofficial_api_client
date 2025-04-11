# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class FilmSearchResponse < Base
      class Film < Base
        attribute? :film_id, Types::Integer
        attribute? :name_ru, Types::String
        attribute? :name_en, Types::String
        attribute? :type, Types::String
        attribute? :year, Types::String
        attribute? :description, Types::String
        attribute? :film_length, Types::String
        attribute? :countries, Types::Array.of(Country)
        attribute? :genres, Types::Array.of(Genre)
        attribute? :rating, Types::String
        attribute? :rating_vote_count, Types::Integer
        attribute? :poster_url, Types::String
        attribute? :poster_url_preview, Types::String
      end
    end
  end
end
