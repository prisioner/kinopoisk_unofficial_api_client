# frozen_string_literal: true

RSpec.describe KinopoiskUnofficialApi::RequestSchemas::FilmDistributions do
  test_cases = {
    id: {
      key_transformations: {
        %i[id film_id filmId] => 1
      },
      required: true
    }
  }

  include_examples "request schema", test_cases
end
