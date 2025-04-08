# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class PersonResponse < Base
      attribute :personId, Types::Integer
      attribute :webUrl, Types::String.default(nil).optional
      attribute :nameRu, Types::String.default(nil).optional
      attribute :nameEn, Types::String.default(nil).optional
      attribute :sex, Types::String.default(nil).optional
      attribute :posterUrl, Types::String
      attribute :growth, Types::String.default(nil).optional
      attribute :birthday, Types::String.default(nil).optional
      attribute :death, Types::String.default(nil).optional
      attribute :age, Types::Integer.default(nil).optional
      attribute :birthplace, Types::String.default(nil).optional
      attribute :deathplace, Types::String.default(nil).optional
      attribute :hasAwards, Types::Integer.default(nil).optional
      attribute :profession, Types::String.default(nil).optional
      attribute :facts, Types::Array.of(Types::String)
      attribute :spouses, Types::Array.of(PersonResponse::Spouse)
      attribute :films, Types::Array.of(PersonResponse::Film)
      alias person_id personId
      alias web_url webUrl
      alias name_ru nameRu
      alias name_en nameEn
      alias poster_url posterUrl
      alias has_awards hasAwards
    end
  end
end
