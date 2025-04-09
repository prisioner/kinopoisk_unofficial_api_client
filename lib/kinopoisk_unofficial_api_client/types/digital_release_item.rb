# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class DigitalReleaseItem < Base
      attribute :film_id, Types::Integer
      attribute :name_ru, Types::String
      attribute :name_en, Types::String
      attribute :year, Types::Integer
      attribute :poster_url, Types::String
      attribute :poster_url_preview, Types::String
      attribute :countries, Types::Array.of(Country)
      attribute :genres, Types::Array.of(Genre)
      attribute :rating, Types::Float | Types::Integer
      attribute :rating_vote_count, Types::Integer
      attribute :expectations_rating, Types::Float | Types::Integer
      attribute :expectations_rating_vote_count, Types::Integer
      attribute :duration, Types::Integer
      attribute :release_date, Types::String
    end
  end
end
