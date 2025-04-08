# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module RequestSchemas
    class FilmReviews < Film
      ORDER_TYPES = %w[
        DATE_ASC
        DATE_DESC
        USER_POSITIVE_RATING_ASC
        USER_POSITIVE_RATING_DESC
        USER_NEGATIVE_RATING_ASC
        USER_NEGATIVE_RATING_DESC
      ].freeze

      attribute? :page, Types::Integer.default(1)
      attribute?(:order, Types::String.default(ORDER_TYPES.first)
                                      .constrained(included_in: ORDER_TYPES)
                                      .constructor { |v| v == Undefined ? v : v.to_s.upcase })
    end
  end
end
