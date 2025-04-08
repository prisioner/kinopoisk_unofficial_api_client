# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class Distribution < Base
      attribute :type, Types::String
      attribute :subType, Types::String.default(nil).optional
      attribute :date, Types::String.default(nil).optional
      attribute :reRelease, Types::Bool.default(nil).optional
      attribute :country, Country.default(nil).optional
      attribute :companies, Types::Array.of(Company)
      alias sub_type subType
      alias re_release reRelease
    end
  end
end
