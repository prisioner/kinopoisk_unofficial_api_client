# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class ApiKeyResponse < Base
      class TotalQuota < Base
        attribute :value, Types::Integer
        attribute :used, Types::Integer
      end
    end
  end
end
