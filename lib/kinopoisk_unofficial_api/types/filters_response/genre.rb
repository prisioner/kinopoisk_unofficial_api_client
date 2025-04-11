# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class FiltersResponse < Base
      class Genre < Base
        attribute? :id, Types::Integer
        attribute? :genre, Types::String
      end
    end
  end
end
