# frozen_string_literal: true

module KinopoiskUnofficialApi
  module RequestSchemas
    class FilmCollections < Base
      TYPES = %w[
        TOP_POPULAR_ALL
        TOP_POPULAR_MOVIES
        TOP_250_TV_SHOWS
        TOP_250_MOVIES
        VAMPIRE_THEME
        COMICS_THEME
        CLOSES_RELEASES
        FAMILY
        OSKAR_WINNERS_2021
        LOVE_THEME
        ZOMBIE_THEME
        CATASTROPHE_THEME
        KIDS_ANIMATION_THEME
        POPULAR_SERIES
      ].freeze

      attribute?(:type, Types::String.default(TYPES.first)
                                     .constrained(included_in: TYPES)
                                     .constructor { |v| v == Undefined ? v : v.to_s.upcase })
      attribute? :page, Types::Integer.default(1)
    end
  end
end
