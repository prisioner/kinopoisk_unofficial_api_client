# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class ApiKeyResponse < Base
      attribute :totalQuota, ApiKeyResponse::TotalQuota
      attribute :dailyQuota, ApiKeyResponse::DailyQuota
      attribute :accountType, Types::String
      alias total_quota totalQuota
      alias daily_quota dailyQuota
      alias account_type accountType
    end
  end
end
