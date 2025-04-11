# frozen_string_literal: true

RSpec.describe KinopoiskUnofficialApi::RequestSchemas::Persons do
  test_cases = {
    name: {
      required: true
    },
    page: {
      required_params: { name: "Jim Carrey" },
      default: 1
    }
  }

  include_examples "request schema", test_cases
end
