# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class VideoResponse < Base
      attribute :total, Types::Integer
      attribute :items, Types::Array.of(VideoResponse::Item)
    end
  end
end
