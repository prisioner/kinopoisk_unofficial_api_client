# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class MediaPostsResponse < Base
      class Item < Base
        attribute? :kinopoisk_id, Types::Integer
        attribute? :image_url, Types::String
        attribute? :title, Types::String
        attribute? :description, Types::String
        attribute? :url, Types::String
        attribute? :published_at, Types::String
      end
    end
  end
end
