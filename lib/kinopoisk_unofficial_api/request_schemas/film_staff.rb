# frozen_string_literal: true

module KinopoiskUnofficialApi
  module RequestSchemas
    class FilmStaff < Base
      transform_keys { |k| %i[film_id filmId].include?(k.to_sym) ? :filmId : k }

      attribute :filmId, Types::Integer
    end
  end
end
