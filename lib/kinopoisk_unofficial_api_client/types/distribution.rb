# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class Distribution < Base
      attribute :type, Types::String
      attribute :sub_type, Types::String.optional
      attribute :date, Types::String.optional
      attribute :re_release, Types::Bool.optional
      attribute :country, Country.optional
      attribute :companies, Types::Array.of(Company)
    end
  end
end
