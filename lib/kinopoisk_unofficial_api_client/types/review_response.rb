# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class ReviewResponse < Base
      attribute :total, Types::Integer
      attribute :totalPages, Types::Integer
      attribute :totalPositiveReviews, Types::Integer
      attribute :totalNegativeReviews, Types::Integer
      attribute :totalNeutralReviews, Types::Integer
      attribute :items, Types::Array.of(ReviewResponse::Item)
      alias total_pages totalPages
      alias total_positive_reviews totalPositiveReviews
      alias total_negative_reviews totalNegativeReviews
      alias total_neutral_reviews totalNeutralReviews
    end
  end
end
