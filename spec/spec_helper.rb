# frozen_string_literal: true

require "kinopoisk_unofficial_api"
require "dotenv/load"

ENV["X_API_KEY"] ||= "test"

require "vcr"

VCR.configure do |config|
  config.cassette_library_dir = "#{__dir__}/cassettes"
  config.default_cassette_options = { record_on_error: false }
  config.hook_into :faraday
  config.configure_rspec_metadata!

  config.filter_sensitive_data("<X_API_KEY>") do
    ENV.fetch("X_API_KEY")
  end
end

Dir["#{__dir__}/support/**/*.rb"].sort.each { |f| require f }

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

KinopoiskUnofficialApi.configure do |config|
  config.genres = JSON.parse(File.read("#{__dir__}/fixtures/genres.json"), symbolize_names: true)
  config.countries = JSON.parse(File.read("#{__dir__}/fixtures/countries.json"), symbolize_names: true)
end
