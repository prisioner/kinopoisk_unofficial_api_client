# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class FilmSearchResponse < Base
      class Film < Base
        attribute? :filmId, Types::Integer
        attribute? :nameRu, Types::String
        attribute? :nameEn, Types::String
        attribute? :type, Types::String
        attribute? :year, Types::String
        attribute? :description, Types::String
        attribute? :filmLength, Types::String
        attribute? :countries, Types::Array.of(Country)
        attribute? :genres, Types::Array.of(Genre)
        attribute? :rating, Types::String
        attribute? :ratingVoteCount, Types::Integer
        attribute? :posterUrl, Types::String
        attribute? :posterUrlPreview, Types::String
        alias film_id filmId
        alias name_ru nameRu
        alias name_en nameEn
        alias film_length filmLength
        alias rating_vote_count ratingVoteCount
        alias poster_url posterUrl
        alias poster_url_preview posterUrlPreview
      end
    end
  end
end
