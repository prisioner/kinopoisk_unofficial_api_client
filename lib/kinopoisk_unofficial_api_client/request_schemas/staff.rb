# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module RequestSchemas
    class Staff < Base
      transform_keys { |k| %i[staff_id staffId person_id personId id].include?(k.to_sym) ? :id : k }

      attribute :id, Types::Integer
    end
  end
end
