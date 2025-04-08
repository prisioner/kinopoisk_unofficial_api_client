# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class BoxOffice < Base
      attribute :type, Types::String
      attribute :amount, Types::Integer
      attribute :currencyCode, Types::String
      attribute :name, Types::String
      attribute :symbol, Types::String
      alias currency_code currencyCode
    end
  end
end
