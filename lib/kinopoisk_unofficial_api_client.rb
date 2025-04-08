# frozen_string_literal: true

require "zeitwerk"
require "dry-struct"
require_relative "kinopoisk_unofficial_api_client/version"

loader = Zeitwerk::Loader.for_gem(warn_on_extra_files: false)
loader.setup

module KinopoiskUnofficialApiClient
end
