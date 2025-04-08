# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class PersonResponse < Base
      attribute :personId, Types::Integer
      attribute :webUrl, Types::String.optional
      attribute :nameRu, Types::String.optional
      attribute :nameEn, Types::String.optional
      attribute :sex, Types::String.optional
      attribute :posterUrl, Types::String
      attribute :growth, Types::String.optional
      attribute :birthday, Types::String.optional
      attribute :death, Types::String.optional
      attribute :age, Types::Integer.optional
      attribute :birthplace, Types::String.optional
      attribute :deathplace, Types::String.optional
      attribute :hasAwards, Types::Integer.optional
      attribute :profession, Types::String.optional
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
