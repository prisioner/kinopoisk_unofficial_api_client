# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class VideoResponse < Base
      class Item < Base
        attribute? :url, Types::String
        attribute? :name, Types::String
        attribute? :site, Types::String
      end
    end
  end
end
