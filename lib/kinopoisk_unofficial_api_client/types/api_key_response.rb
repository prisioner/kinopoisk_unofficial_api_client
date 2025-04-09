# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class ApiKeyResponse < Base
      attribute :total_quota, ApiKeyResponse::TotalQuota
      attribute :daily_quota, ApiKeyResponse::DailyQuota
      attribute :account_type, Types::String
    end
  end
end
