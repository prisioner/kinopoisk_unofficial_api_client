# frozen_string_literal: true

require_relative "lib/kinopoisk_unofficial_api_client/version"

Gem::Specification.new do |spec|
  spec.name = "kinopoisk_unofficial_api_client"
  spec.version = KinopoiskUnofficialApiClient::VERSION
  spec.authors = ["Aleksandr Klimenkov"]
  spec.email = ["prisioner@mail.ru"]

  spec.summary = "Ruby wrapper for Kinopoisk Unofficial API"
  spec.homepage = "https://github.com/prisioner/kinopoisk_unofficial_api_client"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/prisioner/kinopoisk_unofficial_api_client"
  spec.metadata["changelog_uri"] = "https://github.com/prisioner/kinopoisk_unofficial_api_client/blob/master/CHANGELOG.md"

  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "dry-struct", "~> 1.6"
  spec.add_dependency "faraday", "~> 2.0"
  spec.add_dependency "zeitwerk", "~> 2.6"
end
