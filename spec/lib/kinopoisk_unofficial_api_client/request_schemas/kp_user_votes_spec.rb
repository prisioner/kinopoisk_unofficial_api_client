# frozen_string_literal: true

RSpec.describe KinopoiskUnofficialApiClient::RequestSchemas::KpUserVotes do
  test_cases = {
    id: {
      key_transformations: {
        %i[id user_id userId kp_user_id kpUserId] => 1
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
