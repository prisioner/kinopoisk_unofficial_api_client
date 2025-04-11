# frozen_string_literal: true

module KinopoiskUnofficialApi
  module Types
    class KinopoiskUserVoteResponse < Base
      attribute :total, Types::Integer
      attribute :total_pages, Types::Integer
      attribute :items, Types::Array.of(KinopoiskUserVoteResponse::Item)
    end
  end
end
