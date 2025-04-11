# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class Episode < Base
      attribute :season_number, Types::Integer
      attribute :episode_number, Types::Integer
      attribute :name_ru, Types::String.optional
      attribute :name_en, Types::String.optional
      attribute :synopsis, Types::String.optional
      attribute :release_date, Types::String.optional
    end
  end
end
