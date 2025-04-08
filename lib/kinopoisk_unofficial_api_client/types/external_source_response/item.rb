# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class ExternalSourceResponse < Base
      class Item < Base
        attribute? :url, Types::String
        attribute? :platform, Types::String
        attribute? :logoUrl, Types::String
        attribute? :positiveRating, Types::Integer
        attribute? :negativeRating, Types::Integer
        attribute? :author, Types::String
        attribute? :title, Types::String.optional
        attribute? :description, Types::String
        alias logo_url logoUrl
        alias positive_rating positiveRating
        alias negative_rating negativeRating
      end
    end
  end
end
