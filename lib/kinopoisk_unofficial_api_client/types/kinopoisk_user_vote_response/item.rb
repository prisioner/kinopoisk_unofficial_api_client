# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class KinopoiskUserVoteResponse < Base
      class Item < Base
        attribute? :kinopoiskId, Types::Integer
        attribute? :nameRu, Types::String.optional
        attribute? :nameEn, Types::String.optional
        attribute? :nameOriginal, Types::String.optional
        attribute? :countries, Types::Array.of(Country)
        attribute? :genres, Types::Array.of(Genre)
        attribute? :ratingKinopoisk, Types::Float | Types::Integer.optional
        attribute? :ratingImbd, Types::Float | Types::Integer.optional
        attribute? :year, Types::Integer.optional
        attribute? :type, Types::String
        attribute? :posterUrl, Types::String
        attribute? :posterUrlPreview, Types::String
        attribute? :userRating, Types::Integer
        alias kinopoisk_id kinopoiskId
        alias name_ru nameRu
        alias name_en nameEn
        alias name_original nameOriginal
        alias rating_kinopoisk ratingKinopoisk
        alias rating_imbd ratingImbd
        alias poster_url posterUrl
        alias poster_url_preview posterUrlPreview
        alias user_rating userRating
      end
    end
  end
end
