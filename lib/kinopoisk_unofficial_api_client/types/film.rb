# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class Film < Base
      attribute :kinopoiskId, Types::Integer
      attribute :kinopoiskHDId, Types::String.default(nil).optional
      attribute :imdbId, Types::String.default(nil).optional
      attribute :nameRu, Types::String.default(nil).optional
      attribute :nameEn, Types::String.default(nil).optional
      attribute :nameOriginal, Types::String.default(nil).optional
      attribute :posterUrl, Types::String
      attribute :posterUrlPreview, Types::String
      attribute :coverUrl, Types::String.default(nil).optional
      attribute :logoUrl, Types::String.default(nil).optional
      attribute :reviewsCount, Types::Integer
      attribute :ratingGoodReview, Types::Float | Types::Integer.default(nil).optional
      attribute :ratingGoodReviewVoteCount, Types::Integer.default(nil).optional
      attribute :ratingKinopoisk, Types::Float | Types::Integer.default(nil).optional
      attribute :ratingKinopoiskVoteCount, Types::Integer.default(nil).optional
      attribute :ratingImdb, Types::Float | Types::Integer.default(nil).optional
      attribute :ratingImdbVoteCount, Types::Integer.default(nil).optional
      attribute :ratingFilmCritics, Types::Float | Types::Integer.default(nil).optional
      attribute :ratingFilmCriticsVoteCount, Types::Integer.default(nil).optional
      attribute :ratingAwait, Types::Float | Types::Integer.default(nil).optional
      attribute :ratingAwaitCount, Types::Integer.default(nil).optional
      attribute :ratingRfCritics, Types::Float | Types::Integer.default(nil).optional
      attribute :ratingRfCriticsVoteCount, Types::Integer.default(nil).optional
      attribute :webUrl, Types::String
      attribute :year, Types::Integer.default(nil).optional
      attribute :filmLength, Types::Integer.default(nil).optional
      attribute :slogan, Types::String.default(nil).optional
      attribute :description, Types::String.default(nil).optional
      attribute :shortDescription, Types::String.default(nil).optional
      attribute :editorAnnotation, Types::String.default(nil).optional
      attribute :isTicketsAvailable, Types::Bool
      attribute :productionStatus, Types::String.default(nil).optional
      attribute :type, Types::String
      attribute :ratingMpaa, Types::String.default(nil).optional
      attribute :ratingAgeLimits, Types::String.default(nil).optional
      attribute :hasImax, Types::Bool.default(nil).optional
      attribute :has3D, Types::Bool.default(nil).optional
      attribute :lastSync, Types::String
      attribute :countries, Types::Array.of(Country)
      attribute :genres, Types::Array.of(Genre)
      attribute :startYear, Types::Integer.default(nil).optional
      attribute :endYear, Types::Integer.default(nil).optional
      attribute? :serial, Types::Bool.optional
      attribute? :shortFilm, Types::Bool.optional
      attribute? :completed, Types::Bool.optional
      alias kinopoisk_id kinopoiskId
      alias kinopoisk_hdid kinopoiskHDId
      alias imdb_id imdbId
      alias name_ru nameRu
      alias name_en nameEn
      alias name_original nameOriginal
      alias poster_url posterUrl
      alias poster_url_preview posterUrlPreview
      alias cover_url coverUrl
      alias logo_url logoUrl
      alias reviews_count reviewsCount
      alias rating_good_review ratingGoodReview
      alias rating_good_review_vote_count ratingGoodReviewVoteCount
      alias rating_kinopoisk ratingKinopoisk
      alias rating_kinopoisk_vote_count ratingKinopoiskVoteCount
      alias rating_imdb ratingImdb
      alias rating_imdb_vote_count ratingImdbVoteCount
      alias rating_film_critics ratingFilmCritics
      alias rating_film_critics_vote_count ratingFilmCriticsVoteCount
      alias rating_await ratingAwait
      alias rating_await_count ratingAwaitCount
      alias rating_rf_critics ratingRfCritics
      alias rating_rf_critics_vote_count ratingRfCriticsVoteCount
      alias web_url webUrl
      alias film_length filmLength
      alias short_description shortDescription
      alias editor_annotation editorAnnotation
      alias is_tickets_available isTicketsAvailable
      alias production_status productionStatus
      alias rating_mpaa ratingMpaa
      alias rating_age_limits ratingAgeLimits
      alias has_imax hasImax
      alias has3_d has3D
      alias last_sync lastSync
      alias start_year startYear
      alias end_year endYear
      alias short_film shortFilm
    end
  end
end
