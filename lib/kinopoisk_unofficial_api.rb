# frozen_string_literal: true

require "json"
require "faraday"
require "zeitwerk"
require "dry-struct"
require_relative "kinopoisk_unofficial_api/version"

loader = Zeitwerk::Loader.for_gem(warn_on_extra_files: false)
loader.inflector.inflect("endpoints" => "ENDPOINTS")
loader.setup

module KinopoiskUnofficialApi
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
