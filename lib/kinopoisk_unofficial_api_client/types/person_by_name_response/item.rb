# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class PersonByNameResponse < Base
      class Item < Base
        attribute? :kinopoiskId, Types::Integer
        attribute? :webUrl, Types::String
        attribute? :nameRu, Types::String.optional
        attribute? :nameEn, Types::String.optional
        attribute? :sex, Types::String.optional
        attribute? :posterUrl, Types::String
        alias kinopoisk_id kinopoiskId
        alias web_url webUrl
        alias name_ru nameRu
        alias name_en nameEn
        alias poster_url posterUrl
      end
    end
  end
end
