# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class BoxOffice < Base
      attribute :type, Types::String
      attribute :amount, Types::Integer
      attribute :currency_code, Types::String
      attribute :name, Types::String
      attribute :symbol, Types::String
    end
  end
end
