# frozen_string_literal: true

RSpec.describe KinopoiskUnofficialApiClient::RequestSchemas::Staff do
  test_cases = {
    id: {
      key_transformations: {
        %i[id staff_id staffId person_id personId] => 1
      },
      required: true
    }
  }

  include_examples "request schema", test_cases
end
