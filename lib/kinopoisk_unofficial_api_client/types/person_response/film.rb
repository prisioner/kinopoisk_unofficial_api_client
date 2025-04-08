# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class PersonResponse < Base
      class Film < Base
        attribute? :filmId, Types::Integer
        attribute? :nameRu, Types::String.optional
        attribute? :nameEn, Types::String.optional
        attribute? :rating, Types::String.optional
        attribute? :general, Types::Bool
        attribute? :description, Types::String.optional
        attribute? :professionKey, Types::String
        alias film_id filmId
        alias name_ru nameRu
        alias name_en nameEn
        alias profession_key professionKey
      end
    end
  end
end
