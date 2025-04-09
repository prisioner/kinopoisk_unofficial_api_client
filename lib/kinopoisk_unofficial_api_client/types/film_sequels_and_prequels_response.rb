# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class FilmSequelsAndPrequelsResponse < Base
      attribute :film_id, Types::Integer
      attribute :name_ru, Types::String
      attribute :name_en, Types::String
      attribute :name_original, Types::String
      attribute :poster_url, Types::String
      attribute :poster_url_preview, Types::String
      attribute :relation_type, Types::String
    end
  end
end
