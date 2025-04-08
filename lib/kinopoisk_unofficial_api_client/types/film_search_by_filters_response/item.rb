# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class FilmSearchByFiltersResponse < Base
      class Item < Base
        attribute? :kinopoiskId, Types::Integer
        attribute? :imdbId, Types::String.optional
        attribute? :nameRu, Types::String.optional
        attribute? :nameEn, Types::String.optional
        attribute? :nameOriginal, Types::String.optional
        attribute? :countries, Types::Array.of(Country)
        attribute? :genres, Types::Array.of(Genre)
        attribute? :ratingKinopoisk, Types::Float | Types::Integer.optional
        attribute? :ratingImdb, Types::Float | Types::Integer.optional
        attribute? :year, Types::Float | Types::Integer.optional
        attribute? :type, Types::String
        attribute? :posterUrl, Types::String
        attribute? :posterUrlPreview, Types::String
        alias kinopoisk_id kinopoiskId
        alias imdb_id imdbId
        alias name_ru nameRu
        alias name_en nameEn
        alias name_original nameOriginal
        alias rating_kinopoisk ratingKinopoisk
        alias rating_imdb ratingImdb
        alias poster_url posterUrl
        alias poster_url_preview posterUrlPreview
      end
    end
  end
end
