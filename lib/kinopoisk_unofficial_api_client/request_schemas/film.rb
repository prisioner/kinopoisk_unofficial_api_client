# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module RequestSchemas
    class Film < Base
      transform_keys { |k| %i[film_id filmId id].include?(k.to_sym) ? :id : k }

      attribute :id, Types::Integer
    end
  end
end
