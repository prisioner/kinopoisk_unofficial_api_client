# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class ExternalSourceResponse < Base
      class Item < Base
        attribute? :url, Types::String
        attribute? :platform, Types::String
        attribute? :logo_url, Types::String
        attribute? :positive_rating, Types::Integer
        attribute? :negative_rating, Types::Integer
        attribute? :author, Types::String
        attribute? :title, Types::String.optional
        attribute? :description, Types::String
      end
    end
  end
end
