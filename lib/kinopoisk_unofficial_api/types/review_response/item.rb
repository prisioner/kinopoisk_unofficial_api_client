# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class ReviewResponse < Base
      class Item < Base
        attribute? :kinopoisk_id, Types::Integer
        attribute? :type, Types::String
        attribute? :date, Types::String
        attribute? :positive_rating, Types::Integer
        attribute? :negative_rating, Types::Integer
        attribute? :author, Types::String
        attribute? :title, Types::String.optional
        attribute? :description, Types::String
      end
    end
  end
end
