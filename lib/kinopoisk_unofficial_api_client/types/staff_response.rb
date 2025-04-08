# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module Types
    class StaffResponse < Base
      attribute :staffId, Types::Integer
      attribute :nameRu, Types::String.optional
      attribute :nameEn, Types::String.optional
      attribute :description, Types::String.optional
      attribute :posterUrl, Types::String
      attribute :professionText, Types::String
      attribute :professionKey, Types::String
      alias staff_id staffId
      alias name_ru nameRu
      alias name_en nameEn
      alias poster_url posterUrl
      alias profession_text professionText
      alias profession_key professionKey
    end
  end
end
