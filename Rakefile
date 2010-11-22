require 'rake'
require 'rspec'
require 'rspec/core'
require 'rspec/core/rake_task'

task :default => :spec

desc "Run all specs in spec directory (excluding plugin specs)"
RSpec::Core::RakeTask.new do |t|
  t.rspec_opts = ["-c", "-f progress", "-r ./spec/spec_helper.rb"]
  t.pattern = 'spec/**/*_spec.rb'
end

begin
  require "jeweler"
  Jeweler::Tasks.new do |gem|
    gem.name = "in-memory-enumeration"
    gem.summary = "Provide a similar API to acts_as_enumerable but in memory instead of database tables."
    gem.description = "Use in-memory-enumeration instead of hashes and statics for your enum data."
    gem.email = "pivotal-opensource@googlegroups.com"
    gem.homepage = "http://github.com/pivotal/in-memory-enumeration"
    gem.authors = ["Pivotal Labs"]
    gem.files = Dir["{lib}/**/*"]
  end
rescue
  puts "Jeweler or one of its dependencies is not installed."
end