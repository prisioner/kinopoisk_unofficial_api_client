# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class PremiereResponseItem < Base
      attribute :kinopoisk_id, Types::Integer
      attribute :name_ru, Types::String.optional
      attribute :name_en, Types::String.optional
      attribute :year, Types::Integer
      attribute :poster_url, Types::String
      attribute :poster_url_preview, Types::String
      attribute :countries, Types::Array.of(Country)
      attribute :genres, Types::Array.of(Genre)
      attribute :duration, Types::Integer.optional
      attribute :premiere_ru, Types::String
    end
  end
end
