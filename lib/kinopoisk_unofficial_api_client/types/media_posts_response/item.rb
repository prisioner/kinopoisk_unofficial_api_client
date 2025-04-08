# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class MediaPostsResponse < Base
      class Item < Base
        attribute? :kinopoiskId, Types::Integer
        attribute? :imageUrl, Types::String
        attribute? :title, Types::String
        attribute? :description, Types::String
        attribute? :url, Types::String
        attribute? :publishedAt, Types::String
        alias kinopoisk_id kinopoiskId
        alias image_url imageUrl
        alias published_at publishedAt
      end
    end
  end
end
