# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module RequestSchemas
    class MediaPosts < Base
      attribute? :page, Types::Integer.default(1)
    end
  end
end
