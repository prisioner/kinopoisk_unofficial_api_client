# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module RequestSchemas
    class Base < Dry::Struct
      transform_keys do |key|
        words = key.to_s.split("_")
        words.drop(1).map(&:capitalize!)
        words.join.to_sym
      end

      def to_params_hash
        to_h.transform_keys(&:to_s).transform_values(&:to_s)
      end
    end
  end
end
