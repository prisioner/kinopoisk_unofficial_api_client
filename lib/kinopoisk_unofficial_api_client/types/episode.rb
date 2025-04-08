# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class Episode < Base
      attribute :seasonNumber, Types::Integer
      attribute :episodeNumber, Types::Integer
      attribute :nameRu, Types::String.optional
      attribute :nameEn, Types::String.optional
      attribute :synopsis, Types::String.optional
      attribute :releaseDate, Types::String.optional
      alias season_number seasonNumber
      alias episode_number episodeNumber
      alias name_ru nameRu
      alias name_en nameEn
      alias release_date releaseDate
    end
  end
end
