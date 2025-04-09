# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class ImageResponse < Base
      attribute :total, Types::Integer
      attribute :total_pages, Types::Integer
      attribute :items, Types::Array.of(ImageResponse::Item)
    end
  end
end
