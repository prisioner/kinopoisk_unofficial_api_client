# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class RelatedFilmResponse < Base
      class Item < Base
        attribute? :filmId, Types::Integer
        attribute? :nameRu, Types::String.optional
        attribute? :nameEn, Types::String.optional
        attribute? :nameOriginal, Types::String.optional
        attribute? :posterUrl, Types::String
        attribute? :posterUrlPreview, Types::String
        attribute? :relationType, Types::String
        alias film_id filmId
        alias name_ru nameRu
        alias name_en nameEn
        alias name_original nameOriginal
        alias poster_url posterUrl
        alias poster_url_preview posterUrlPreview
        alias relation_type relationType
      end
    end
  end
end
