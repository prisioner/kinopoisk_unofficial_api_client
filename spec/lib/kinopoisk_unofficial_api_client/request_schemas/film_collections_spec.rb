# frozen_string_literal: true

RSpec.describe KinopoiskUnofficialApiClient::RequestSchemas::FilmCollections do
  test_cases = {
    type: {
      value_transformations: {
        "ZOMBIE_THEME" => "ZOMBIE_THEME",
        "zombie_theme" => "ZOMBIE_THEME",
        :zombie_theme => "ZOMBIE_THEME"
      },
      default: "TOP_POPULAR_ALL"
    },
    page: {
      default: 1
    }
  }

  include_examples "request schema", test_cases
end
