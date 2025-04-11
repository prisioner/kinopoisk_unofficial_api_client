# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class PersonResponse < Base
      attribute :person_id, Types::Integer
      attribute :web_url, Types::String.optional
      attribute :name_ru, Types::String.optional
      attribute :name_en, Types::String.optional
      attribute :sex, Types::String.optional
      attribute :poster_url, Types::String
      attribute :growth, Types::Integer.optional
      attribute :birthday, Types::String.optional
      attribute :death, Types::String.optional
      attribute :age, Types::Integer.optional
      attribute :birthplace, Types::String.optional
      attribute :deathplace, Types::String.optional
      attribute :has_awards, Types::Integer.optional
      attribute :profession, Types::String.optional
      attribute :facts, Types::Array.of(Types::String)
      attribute :spouses, Types::Array.of(PersonResponse::Spouse)
      attribute :films, Types::Array.of(PersonResponse::Film)
    end
  end
end
