# frozen_string_literal: true

RSpec.describe KinopoiskUnofficialApi::RequestSchemas::ApiKey do
  test_cases = {
    apiKey: {
      key_transformations: {
        %i[api_key apiKey] => "SECRET-API-KEY"
      },
      required: true
    }
  }

  include_examples "request schema", test_cases
end
