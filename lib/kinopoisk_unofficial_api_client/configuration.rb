# frozen_string_literal: true

module KinopoiskUnofficialApiClient
  class Configuration
    attr_accessor :adapter, :connection_open_timeout, :connection_timeout, :genres, :countries

    def initialize
      @adapter = Faraday.default_adapter
      @connection_open_timeout = 20
      @connection_timeout = 20
      @genres = JSON.parse(File.read("#{__dir__}/../../data/genres.json"), symbolize_names: true)
      @countries = JSON.parse(File.read("#{__dir__}/../../data/countries.json"), symbolize_names: true)
    end
  end
end
