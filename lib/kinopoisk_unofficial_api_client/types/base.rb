# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class Base < Dry::Struct
      include Compactable
      include PatternMatching

      transform_keys(&:to_sym)
    end
  end
end
