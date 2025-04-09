# frozen_string_literal: true

RSpec.describe KinopoiskUnofficialApiClient::RequestSchemas::FilmStaff do
  test_cases = {
    filmId: {
      key_transformations: {
        %i[film_id filmId] => 1
      },
      required: true
    }
  }

  include_examples "request schema", test_cases
end
