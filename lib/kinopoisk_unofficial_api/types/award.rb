# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class Award < Base
      attribute :name, Types::String
      attribute :win, Types::Bool
      attribute :image_url, Types::String.optional
      attribute :nomination_name, Types::String
      attribute :year, Types::Integer
      attribute? :persons, Types::Array.of(AwardPerson)
    end
  end
end
