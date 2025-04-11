# frozen_string_literal: true

module KinopoiskUnofficialApi
  module RequestSchemas
    class SearchFilmByKeyword < Base
      attribute(:keyword, Types::String.constructor { |v| v.is_a?(Array) ? v.join(", ") : v })
      attribute? :page, Types::Integer.default(1)
    end
  end
end
