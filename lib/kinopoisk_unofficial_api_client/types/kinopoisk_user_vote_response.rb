# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class KinopoiskUserVoteResponse < Base
      attribute :total, Types::Integer
      attribute :total_pages, Types::Integer
      attribute :items, Types::Array.of(KinopoiskUserVoteResponse::Item)
    end
  end
end
