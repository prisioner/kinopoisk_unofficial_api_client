# frozen_string_literal: true

module KinopoiskUnofficialApi
  module RequestSchemas
    class FilmExternalSources < Film
      attribute? :page, Types::Integer.default(1)
    end
  end
end
