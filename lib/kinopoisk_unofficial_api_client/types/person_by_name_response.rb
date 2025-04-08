# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class PersonByNameResponse < Base
      attribute :total, Types::Integer
      attribute :items, Types::Array.of(PersonByNameResponse::Item)
    end
  end
end
