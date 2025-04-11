# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class RelatedFilmResponse < Base
      class Item < Base
        attribute? :film_id, Types::Integer
        attribute? :name_ru, Types::String.optional
        attribute? :name_en, Types::String.optional
        attribute? :name_original, Types::String.optional
        attribute? :poster_url, Types::String
        attribute? :poster_url_preview, Types::String
        attribute? :relation_type, Types::String
      end
    end
  end
end
