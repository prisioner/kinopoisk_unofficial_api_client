# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class Season < Base
      attribute :number, Types::Integer
      attribute :episodes, Types::Array.of(Episode)
    end
  end
end
