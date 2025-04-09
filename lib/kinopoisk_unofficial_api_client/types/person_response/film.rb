# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class PersonResponse < Base
      class Film < Base
        attribute? :film_id, Types::Integer
        attribute? :name_ru, Types::String.optional
        attribute? :name_en, Types::String.optional
        attribute? :rating, Types::String.optional
        attribute? :general, Types::Bool
        attribute? :description, Types::String.optional
        attribute? :profession_key, Types::String
      end
    end
  end
end
