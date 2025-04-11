# frozen_string_literal: true

module KinopoiskUnofficialApi
  module RequestSchemas
    class Persons < Base
      attribute :name, Types::String
      attribute? :page, Types::Integer.default(1)
    end
  end
end
