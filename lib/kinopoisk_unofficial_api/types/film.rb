# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class Film < Base
      attribute :kinopoisk_id, Types::Integer
      attribute :kinopoisk_hdid, Types::String.optional
      attribute :imdb_id, Types::String.optional
      attribute :name_ru, Types::String.optional
      attribute :name_en, Types::String.optional
      attribute :name_original, Types::String.optional
      attribute :poster_url, Types::String
      attribute :poster_url_preview, Types::String
      attribute :cover_url, Types::String.optional
      attribute :logo_url, Types::String.optional
      attribute :reviews_count, Types::Integer
      attribute :rating_good_review, Types::Float | Types::Integer.optional
      attribute :rating_good_review_vote_count, Types::Integer.optional
      attribute :rating_kinopoisk, Types::Float | Types::Integer.optional
      attribute :rating_kinopoisk_vote_count, Types::Integer.optional
      attribute :rating_imdb, Types::Float | Types::Integer.optional
      attribute :rating_imdb_vote_count, Types::Integer.optional
      attribute :rating_film_critics, Types::Float | Types::Integer.optional
      attribute :rating_film_critics_vote_count, Types::Integer.optional
      attribute :rating_await, Types::Float | Types::Integer.optional
      attribute :rating_await_count, Types::Integer.optional
      attribute :rating_rf_critics, Types::Float | Types::Integer.optional
      attribute :rating_rf_critics_vote_count, Types::Integer.optional
      attribute :web_url, Types::String
      attribute :year, Types::Integer.optional
      attribute :film_length, Types::Integer.optional
      attribute :slogan, Types::String.optional
      attribute :description, Types::String.optional
      attribute :short_description, Types::String.optional
      attribute :editor_annotation, Types::String.optional
      attribute :is_tickets_available, Types::Bool
      attribute :production_status, Types::String.optional
      attribute :type, Types::String
      attribute :rating_mpaa, Types::String.optional
      attribute :rating_age_limits, Types::String.optional
      attribute :has_imax, Types::Bool.optional
      attribute :has3_d, Types::Bool.optional
      attribute :last_sync, Types::String
      attribute :countries, Types::Array.of(Country)
      attribute :genres, Types::Array.of(Genre)
      attribute :start_year, Types::Integer.optional
      attribute :end_year, Types::Integer.optional
      attribute? :serial, Types::Bool.optional
      attribute? :short_film, Types::Bool.optional
      attribute? :completed, Types::Bool.optional
    end
  end
end
