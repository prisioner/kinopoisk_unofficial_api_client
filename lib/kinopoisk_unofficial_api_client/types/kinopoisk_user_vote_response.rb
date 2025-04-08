# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class KinopoiskUserVoteResponse < Base
      attribute :total, Types::Integer
      attribute :totalPages, Types::Integer
      attribute :items, Types::Array.of(KinopoiskUserVoteResponse::Item)
      alias total_pages totalPages
    end
  end
end
