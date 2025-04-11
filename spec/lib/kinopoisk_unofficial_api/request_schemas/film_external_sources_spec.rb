# frozen_string_literal: true

RSpec.describe KinopoiskUnofficialApi::RequestSchemas::FilmExternalSources do
  test_cases = {
    id: {
      key_transformations: {
        %i[id film_id filmId] => 1
      },
      required: true
    },
    page: {
      required_params: { id: 1 },
      default: 1
    }
  }

  include_examples "request schema", test_cases
end
