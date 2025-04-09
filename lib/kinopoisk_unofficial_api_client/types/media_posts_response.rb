# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class MediaPostsResponse < Base
      attribute :total, Types::Integer
      attribute :total_pages, Types::Integer
      attribute :items, Types::Array.of(MediaPostsResponse::Item)
    end
  end
end
