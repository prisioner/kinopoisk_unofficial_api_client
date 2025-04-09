# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class PersonByNameResponse < Base
      class Item < Base
        attribute? :kinopoisk_id, Types::Integer
        attribute? :web_url, Types::String
        attribute? :name_ru, Types::String.optional
        attribute? :name_en, Types::String.optional
        attribute? :sex, Types::String.optional
        attribute? :poster_url, Types::String
      end
    end
  end
end
