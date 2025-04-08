# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  module RequestSchemas
    class KpUserVotes < Base
      transform_keys { |k| %i[kp_user_id kpUserId user_id userId id].include?(k.to_sym) ? :id : k }

      attribute :id, Types::Integer
      attribute? :page, Types::Integer.default(1)
    end
  end
end
