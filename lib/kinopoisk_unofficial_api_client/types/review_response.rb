# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class ReviewResponse < Base
      attribute :total, Types::Integer
      attribute :total_pages, Types::Integer
      attribute :total_positive_reviews, Types::Integer
      attribute :total_negative_reviews, Types::Integer
      attribute :total_neutral_reviews, Types::Integer
      attribute :items, Types::Array.of(ReviewResponse::Item)
    end
  end
end
