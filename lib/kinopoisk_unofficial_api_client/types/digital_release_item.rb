# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class DigitalReleaseItem < Base
      attribute :filmId, Types::Integer
      attribute :nameRu, Types::String
      attribute :nameEn, Types::String
      attribute :year, Types::Integer
      attribute :posterUrl, Types::String
      attribute :posterUrlPreview, Types::String
      attribute :countries, Types::Array.of(Country)
      attribute :genres, Types::Array.of(Genre)
      attribute :rating, Types::Float | Types::Integer
      attribute :ratingVoteCount, Types::Integer
      attribute :expectationsRating, Types::Float | Types::Integer
      attribute :expectationsRatingVoteCount, Types::Integer
      attribute :duration, Types::Integer
      attribute :releaseDate, Types::String
      alias film_id filmId
      alias name_ru nameRu
      alias name_en nameEn
      alias poster_url posterUrl
      alias poster_url_preview posterUrlPreview
      alias rating_vote_count ratingVoteCount
      alias expectations_rating expectationsRating
      alias expectations_rating_vote_count expectationsRatingVoteCount
      alias release_date releaseDate
    end
  end
end
