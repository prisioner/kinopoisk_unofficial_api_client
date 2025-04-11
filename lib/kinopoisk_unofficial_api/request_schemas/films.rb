# frozen_string_literal: true

module KinopoiskUnofficialApi
  module RequestSchemas
    class Films < Base
      GENRES =
        KinopoiskUnofficialApi.configuration.genres
                              .reduce({}) { |res, value| res.merge(value[:genre].downcase => value[:id]) }
                              .delete_if { |k, _| k == "" }
                              .freeze
      COUNTRIES =
        KinopoiskUnofficialApi.configuration.countries
                              .reduce({}) { |res, value| res.merge(value[:country].downcase => value[:id]) }
                              .delete_if { |k, _| k == "" }
                              .freeze
      ORDER_TYPES = %w[
        RATING
        NUM_VOTE
        YEAR
      ].freeze
      TYPES = %w[
        ALL
        FILM
        TV_SHOW
        TV_SERIES
        MINI_SERIES
      ].freeze

      attribute?(:genres, Types::String.constrained(format: /^\d+(,\d+)*$/)
                                       .constructor do |value|
                                         case value
                                         when ::Integer
                                           value.to_s
                                         when ::Array
                                           value.map do |v|
                                             case v
                                             when ::String, ::Symbol
                                               GENRES[v.to_s.downcase] || v
                                             else
                                               v
                                             end
                                           end.join(",")
                                         when ::String, ::Symbol
                                           (GENRES[value.to_s.downcase] || value).to_s
                                         else
                                           value
                                         end
                                       end)
      attribute?(:countries, Types::String.constrained(format: /^\d+(,\d+)*$/)
                                          .constructor do |value|
                                            case value
                                            when ::Integer
                                              value.to_s
                                            when ::Array
                                              value.map do |v|
                                                case v
                                                when ::String, ::Symbol
                                                  COUNTRIES[v.to_s.downcase] || v
                                                else
                                                  v
                                                end
                                              end.join(",")
                                            when ::String, ::Symbol
                                              (COUNTRIES[value.to_s.downcase] || value).to_s
                                            else
                                              value
                                            end
                                          end)
      attribute?(:order, Types::String.default(ORDER_TYPES.first)
                                      .constrained(included_in: ORDER_TYPES)
                                      .constructor { |v| v == Undefined ? v : v.to_s.upcase })
      attribute?(:type, Types::String.default(TYPES.first)
                                     .constrained(included_in: TYPES)
                                     .constructor { |v| v == Undefined ? v : v.to_s.upcase })
      attribute? :ratingFrom, (Types::Float | Types::Integer).default(0)
      attribute? :ratingTo, (Types::Float | Types::Integer).default(10)
      attribute? :yearFrom, Types::Integer.default(1000)
      attribute? :yearTo, Types::Integer.default(3000)
      attribute? :imdbId, Types::String
      attribute? :keyword, Types::String
      attribute? :page, Types::Integer.default(1)
    end
  end
end
