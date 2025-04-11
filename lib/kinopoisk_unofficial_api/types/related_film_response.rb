# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class RelatedFilmResponse < Base
      attribute :total, Types::Integer
      attribute :items, Types::Array.of(RelatedFilmResponse::Item)
    end
  end
end
