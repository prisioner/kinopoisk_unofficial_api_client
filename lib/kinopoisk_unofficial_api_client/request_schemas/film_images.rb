# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module RequestSchemas
    class FilmImages < Film
      TYPES = %w[
        STILL
        SHOOTING
        POSTER
        FAN_ART
        PROMO
        CONCEPT
        WALLPAPER
        COVER
        SCREENSHOT
      ].freeze

      attribute?(:type, Types::String.default(TYPES.first)
                                     .constrained(included_in: TYPES)
                                     .constructor { |v| v == Undefined ? v : v.to_s.upcase })
      attribute? :page, Types::Integer.default(1)
    end
  end
end
