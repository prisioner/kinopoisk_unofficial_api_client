# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class RelatedFilmResponse < Base
      attribute :total, Types::Integer
      attribute :items, Types::Array.of(RelatedFilmResponse::Item)
    end
  end
end
