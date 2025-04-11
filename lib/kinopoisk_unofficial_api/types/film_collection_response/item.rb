# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class FilmCollectionResponse < Base
      class Item < Base
        attribute? :kinopoisk_id, Types::Integer
        attribute? :name_ru, Types::String.optional
        attribute? :name_en, Types::String.optional
        attribute? :name_original, Types::String.optional
        attribute? :countries, Types::Array.of(Country)
        attribute? :genres, Types::Array.of(Genre)
        attribute? :rating_kinopoisk, Types::Float | Types::Integer.optional
        attribute? :rating_imbd, Types::Float | Types::Integer.optional
        attribute? :year, Types::Integer.optional
        attribute? :type, Types::String
        attribute? :poster_url, Types::String
        attribute? :poster_url_preview, Types::String
      end
    end
  end
end
