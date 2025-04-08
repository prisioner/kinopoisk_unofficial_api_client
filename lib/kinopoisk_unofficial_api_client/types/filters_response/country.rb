# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class FiltersResponse < Base
      class Country < Base
        attribute? :id, Types::Integer
        attribute? :country, Types::String
      end
    end
  end
end
