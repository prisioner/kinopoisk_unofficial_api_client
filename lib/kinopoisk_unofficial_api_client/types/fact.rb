# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class Fact < Base
      attribute :text, Types::String
      attribute :type, Types::String
      attribute :spoiler, Types::Bool
    end
  end
end
