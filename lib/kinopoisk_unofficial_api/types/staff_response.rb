# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class StaffResponse < Base
      attribute :staff_id, Types::Integer
      attribute :name_ru, Types::String.optional
      attribute :name_en, Types::String.optional
      attribute :description, Types::String.optional
      attribute :poster_url, Types::String
      attribute :profession_text, Types::String
      attribute :profession_key, Types::String
    end
  end
end
