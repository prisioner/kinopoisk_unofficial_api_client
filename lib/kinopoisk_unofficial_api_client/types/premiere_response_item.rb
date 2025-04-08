# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class PremiereResponseItem < Base
      attribute :kinopoiskId, Types::Integer
      attribute :nameRu, Types::String.optional
      attribute :nameEn, Types::String.optional
      attribute :year, Types::Integer
      attribute :posterUrl, Types::String
      attribute :posterUrlPreview, Types::String
      attribute :countries, Types::Array.of(Country)
      attribute :genres, Types::Array.of(Genre)
      attribute :duration, Types::Integer.optional
      attribute :premiereRu, Types::String
      alias kinopoisk_id kinopoiskId
      alias name_ru nameRu
      alias name_en nameEn
      alias poster_url posterUrl
      alias poster_url_preview posterUrlPreview
      alias premiere_ru premiereRu
    end
  end
end
