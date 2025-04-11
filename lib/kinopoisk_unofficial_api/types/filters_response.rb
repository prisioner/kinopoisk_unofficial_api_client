# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class FiltersResponse < Base
      attribute :genres, Types::Array.of(FiltersResponse::Genre)
      attribute :countries, Types::Array.of(FiltersResponse::Country)
    end
  end
end
