# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class FilmSequelsAndPrequelsResponse < Base
      attribute :filmId, Types::Integer
      attribute :nameRu, Types::String
      attribute :nameEn, Types::String
      attribute :nameOriginal, Types::String
      attribute :posterUrl, Types::String
      attribute :posterUrlPreview, Types::String
      attribute :relationType, Types::String
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
