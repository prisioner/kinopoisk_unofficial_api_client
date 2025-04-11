# frozen_string_literal: true

RSpec.describe KinopoiskUnofficialApi::RequestSchemas::FilmImages do
  test_cases = {
    id: {
      key_transformations: {
        %i[id film_id filmId] => 1
      },
      required: true
    },
    type: {
      required_params: { id: 1 },
      value_transformations: {
        "PROMO" => "PROMO",
        "promo" => "PROMO",
        :promo => "PROMO"
      },
      default: "STILL"
    },
    page: {
      required_params: { id: 1 },
      default: 1
    }
  }

  include_examples "request schema", test_cases
end
