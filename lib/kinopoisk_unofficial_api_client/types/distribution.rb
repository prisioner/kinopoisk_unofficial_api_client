# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class Distribution < Base
      attribute :type, Types::String
      attribute :subType, Types::String.optional
      attribute :date, Types::String.optional
      attribute :reRelease, Types::Bool.optional
      attribute :country, Country.optional
      attribute :companies, Types::Array.of(Company)
      alias sub_type subType
      alias re_release reRelease
    end
  end
end
