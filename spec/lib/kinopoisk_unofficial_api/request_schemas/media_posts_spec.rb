# frozen_string_literal: true

RSpec.describe KinopoiskUnofficialApi::RequestSchemas::MediaPosts do
  test_cases = {
    page: {
      default: 1
    }
  }

  include_examples "request schema", test_cases
end
