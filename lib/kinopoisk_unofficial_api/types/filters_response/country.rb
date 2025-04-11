# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class FiltersResponse < Base
      class Country < Base
        attribute? :id, Types::Integer
        attribute? :country, Types::String
      end
    end
  end
end
