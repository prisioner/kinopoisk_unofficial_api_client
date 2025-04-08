# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class PersonResponse < Base
      class Spouse < Base
        attribute? :personId, Types::Integer
        attribute? :name, Types::String.optional
        attribute? :divorced, Types::Bool
        attribute? :divorcedReason, Types::String.optional
        attribute? :sex, Types::String
        attribute? :children, Types::Integer
        attribute? :webUrl, Types::String
        attribute? :relation, Types::String
        alias person_id personId
        alias divorced_reason divorcedReason
        alias web_url webUrl
      end
    end
  end
end
