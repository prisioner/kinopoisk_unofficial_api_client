# frozen_string_literal: true

RSpec.describe KinopoiskUnofficialApi::RequestSchemas::SearchFilmByKeyword do
  test_cases = {
    keyword: {
      value_transformations: {
        "Jim Carrey" => "Jim Carrey",
        %w[mafia New-York] => "mafia, New-York"
      },
      required: true
    },
    page: {
      required_params: { keyword: "Jim Carrey" },
      default: 1
    }
  }

  include_examples "request schema", test_cases
end
