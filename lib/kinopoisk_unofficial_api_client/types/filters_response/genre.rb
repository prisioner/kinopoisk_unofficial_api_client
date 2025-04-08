# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class FiltersResponse < Base
      class Genre < Base
        attribute? :id, Types::Integer
        attribute? :genre, Types::String
      end
    end
  end
end
