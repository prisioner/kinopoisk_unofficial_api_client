# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class Base < Dry::Struct
      include Compactable
      include PatternMatching

      transform_keys do |key|
        key.to_s.gsub(/([a-z\d])([A-Z])/, '\1_\2').downcase.to_sym
      end
    end
  end
end
