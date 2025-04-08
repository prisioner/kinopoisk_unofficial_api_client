# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class Award < Base
      attribute :name, Types::String
      attribute :win, Types::Bool
      attribute :imageUrl, Types::String.optional
      attribute :nominationName, Types::String
      attribute :year, Types::Integer
      attribute? :persons, Types::Array.of(AwardPerson)
      alias image_url imageUrl
      alias nomination_name nominationName
    end
  end
end
