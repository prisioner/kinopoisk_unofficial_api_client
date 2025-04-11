# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class AwardPerson < Base
      attribute :kinopoisk_id, Types::Integer
      attribute :web_url, Types::String
      attribute :name_ru, Types::String.optional
      attribute :name_en, Types::String.optional
      attribute :sex, Types::String
      attribute :poster_url, Types::String
      attribute :growth, Types::Integer.optional
      attribute :birthday, Types::String.optional
      attribute :death, Types::String.optional
      attribute :age, Types::Integer.optional
      attribute :birthplace, Types::String.optional
      attribute :deathplace, Types::String.optional
      attribute :profession, Types::String.optional
    end
  end
end
