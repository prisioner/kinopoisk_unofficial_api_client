# frozen_string_literal: true

RSpec.describe KinopoiskUnofficialApi::RequestSchemas::Films do
  test_cases = {
    genres: {
      value_transformations: {
        1 => "1",
        [1, 2] => "1,2",
        "3" => "3",
        "2,3" => "2,3",
        "WESTERN" => "1",
        %w[western comedy] => "1,2",
        %i[western sci-fi] => "1,3",
        :comedy => "2"
      }
    },
    countries: {
      value_transformations: {
        1 => "1",
        [1, 2] => "1,2",
        "3" => "3",
        "2,3" => "2,3",
        "SOUTH KOREA" => "3",
        ["usa", "south korea"] => "1,3",
        %i[usa ussr] => "1,2",
        :usa => "1"
      }
    },
    order: {
      value_transformations: {
        "YEAR" => "YEAR",
        "year" => "YEAR",
        :year => "YEAR"
      },
      default: "RATING"
    },
    type: {
      value_transformations: {
        "TV_SHOW" => "TV_SHOW",
        "tv_show" => "TV_SHOW",
        :tv_show => "TV_SHOW"
      },
      default: "ALL"
    },
    ratingFrom: {
      key_transformations: {
        %i[rating_from ratingFrom] => 1
      },
      default: 0
    },
    ratingTo: {
      key_transformations: {
        %i[rating_to ratingTo] => 1
      },
      default: 10
    },
    yearFrom: {
      key_transformations: {
        %i[year_from yearFrom] => 1
      },
      default: 1000
    },
    yearTo: {
      key_transformations: {
        %i[year_to yearTo] => 1
      },
      default: 3000
    },
    imdbId: {
      key_transformations: {
        %i[imdb_id imdbId] => "tt123456"
      }
    },
    keyword: {
      required: false
    },
    page: {
      default: 1
    }
  }

  include_examples "request schema", test_cases
end
