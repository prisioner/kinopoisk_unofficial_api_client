# frozen_string_literal: true

RSpec.describe KinopoiskUnofficialApi::RequestSchemas::FilmPremieres do
  test_cases = {
    year: {
      required_params: { month: :jan },
      required: true
    },
    month: {
      required_params: { year: 2025 },
      value_transformations: {
        1 => "JANUARY",
        "JAN" => "JANUARY",
        "jan" => "JANUARY",
        "JANUARY" => "JANUARY",
        "january" => "JANUARY",
        :JAN => "JANUARY",
        :jan => "JANUARY",
        :JANUARY => "JANUARY",
        :january => "JANUARY",
        2 => "FEBRUARY",
        "FEB" => "FEBRUARY",
        3 => "MARCH",
        "MAR" => "MARCH",
        4 => "APRIL",
        "APR" => "APRIL",
        5 => "MAY",
        "MAY" => "MAY",
        6 => "JUNE",
        "JUN" => "JUNE",
        7 => "JULY",
        "JUL" => "JULY",
        8 => "AUGUST",
        "AUG" => "AUGUST",
        9 => "SEPTEMBER",
        "SEP" => "SEPTEMBER",
        10 => "OCTOBER",
        "OCT" => "OCTOBER",
        11 => "NOVEMBER",
        "NOV" => "NOVEMBER",
        12 => "DECEMBER",
        "DEC" => "DECEMBER"
      },
      required: true
    }
  }

  include_examples "request schema", test_cases
end
