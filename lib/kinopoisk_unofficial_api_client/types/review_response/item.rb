# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class ReviewResponse < Base
      class Item < Base
        attribute? :kinopoiskId, Types::Integer
        attribute? :type, Types::String
        attribute? :date, Types::String
        attribute? :positiveRating, Types::Integer
        attribute? :negativeRating, Types::Integer
        attribute? :author, Types::String
        attribute? :title, Types::String.optional
        attribute? :description, Types::String
        alias kinopoisk_id kinopoiskId
        alias positive_rating positiveRating
        alias negative_rating negativeRating
      end
    end
  end
end
