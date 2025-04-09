# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class ImageResponse < Base
      class Item < Base
        attribute? :image_url, Types::String
        attribute? :preview_url, Types::String
      end
    end
  end
end
