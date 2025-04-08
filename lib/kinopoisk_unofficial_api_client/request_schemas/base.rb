# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module RequestSchemas
    class Base < Dry::Struct
      transform_keys do |key|
        words = key.to_s.split("_")
        words.drop(1).map(&:capitalize!)
        words.join.to_sym
      end
    end
  end
end
