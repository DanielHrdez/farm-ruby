# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

require "standard/rake"

task default: %i[spec standard]

task :commit, [:message] do |_task, args|
    message = args[:message] || "Update"
    sh "git add ."
    sh "git commit -m '#{message}'"
end