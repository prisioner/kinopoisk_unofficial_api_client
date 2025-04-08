# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class AwardPerson < Base
      attribute :kinopoiskId, Types::Integer
      attribute :webUrl, Types::String
      attribute :nameRu, Types::String.default(nil).optional
      attribute :nameEn, Types::String.default(nil).optional
      attribute :sex, Types::String
      attribute :posterUrl, Types::String
      attribute :growth, Types::Integer.default(nil).optional
      attribute :birthday, Types::String.default(nil).optional
      attribute :death, Types::String.default(nil).optional
      attribute :age, Types::Integer.default(nil).optional
      attribute :birthplace, Types::String.default(nil).optional
      attribute :deathplace, Types::String.default(nil).optional
      attribute :profession, Types::String.default(nil).optional
      alias kinopoisk_id kinopoiskId
      alias web_url webUrl
      alias name_ru nameRu
      alias name_en nameEn
      alias poster_url posterUrl
    end
  end
end
