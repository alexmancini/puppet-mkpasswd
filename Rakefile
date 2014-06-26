require 'rake'
require 'rake/clean'

require 'puppetlabs_spec_helper/rake_tasks'
require 'puppet-lint/tasks/puppet-lint'

# Configure files to be deleted on clean/clobber.
CLEAN.include '**/npm-debug.log'
CLEAN.include 'spec/reports'

PuppetLint.configuration.send('disable_80chars')
PuppetLint.configuration.ignore_paths = ["spec/**/*.pp", "pkg/**/*.pp"]

begin
  require 'ci/reporter/rake/rspec'
  HAVE_CI_REPORTER = true
rescue LoadError
  HAVE_CI_REPORTER = false
end

begin
  require 'rspec/core/rake_task'
  HAVE_RSPEC = true
rescue LoadError
  HAVE_RSPEC = false
end

if HAVE_RSPEC then
  desc 'Run all module spec tests (Requires rspec-puppet gem)'
  if HAVE_CI_REPORTER then
    options = ['ci:setup:rspec']
  else
    options = []
  end

  RSpec::Core::RakeTask.new(:spec => options) do |t|
    t.pattern = 'spec/**/*_spec.rb'
  end
end

task :default => [:clean, :lint, :spec, :build]
