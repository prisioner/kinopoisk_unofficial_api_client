# frozen_string_literal: true

module KinopoiskUnofficialApi
  module RequestSchemas
    class FilmPremieres < Base
      attribute :year, Types::Integer
      attribute(:month, Types::String.constrained(included_in: Date::MONTHNAMES.compact.map(&:upcase))
                                     .constructor do |value|
                                       case value
                                       when ::Integer
                                         value.between?(1, 12) ? Date::MONTHNAMES[value].upcase : value
                                       when ::Symbol, ::String
                                         if Date::MONTHNAMES.include?(value.to_s.capitalize)
                                           value.to_s.upcase
                                         elsif Date::ABBR_MONTHNAMES.include?(value.to_s.capitalize)
                                           month_index = Date::ABBR_MONTHNAMES.index(value.to_s.capitalize)
                                           Date::MONTHNAMES[month_index].upcase
                                         end
                                       else
                                         value
                                       end
                                     end)
    end
  end
end
