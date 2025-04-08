# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class AwardPerson < Base
      attribute :kinopoiskId, Types::Integer
      attribute :webUrl, Types::String
      attribute :nameRu, Types::String.optional
      attribute :nameEn, Types::String.optional
      attribute :sex, Types::String
      attribute :posterUrl, Types::String
      attribute :growth, Types::Integer.optional
      attribute :birthday, Types::String.optional
      attribute :death, Types::String.optional
      attribute :age, Types::Integer.optional
      attribute :birthplace, Types::String.optional
      attribute :deathplace, Types::String.optional
      attribute :profession, Types::String.optional
      alias kinopoisk_id kinopoiskId
      alias web_url webUrl
      alias name_ru nameRu
      alias name_en nameEn
      alias poster_url posterUrl
    end
  end
end
