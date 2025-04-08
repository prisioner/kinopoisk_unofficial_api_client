# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class ImageResponse < Base
      class Item < Base
        attribute? :imageUrl, Types::String
        attribute? :previewUrl, Types::String
        alias image_url imageUrl
        alias preview_url previewUrl
      end
    end
  end
end
