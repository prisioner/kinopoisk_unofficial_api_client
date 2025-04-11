# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class PersonResponse < Base
      class Spouse < Base
        attribute? :person_id, Types::Integer
        attribute? :name, Types::String.optional
        attribute? :divorced, Types::Bool
        attribute? :divorced_reason, Types::String.optional
        attribute? :sex, Types::String
        attribute? :children, Types::Integer
        attribute? :web_url, Types::String
        attribute? :relation, Types::String
      end
    end
  end
end
