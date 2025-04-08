# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class VideoResponse < Base
      attribute :total, Types::Integer
      attribute :items, Types::Array.of(VideoResponse::Item)
    end
  end
end
