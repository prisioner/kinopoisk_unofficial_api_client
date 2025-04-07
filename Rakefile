# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

require "rubocop/rake_task"

RuboCop::RakeTask.new(:rubocop) do |task|
  task.fail_on_error = false
  task.options = %w[--force-exclusion]
  task.patterns = %w[{lib,spec}/**/*.rb Rakefile Gemfile rakelib/*.rake *.gemspec]
  task.requires << "rubocop-rspec"
end

task default: %i[spec rubocop]
