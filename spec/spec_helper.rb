ENV["RAILS_ENV"] ||= "test"
require 'rails_app/config/environment'
require "rspec/rails"

#Spec::Example::ExampleGroupFactory.register(:functional, Spec::Rails::Example::FunctionalExampleGroup)
#Spec::Runner.configure do |configuration|
#  configuration.include CommonTestHelper
#  configuration.use_transactional_fixtures = true
#  configuration.use_instantiated_fixtures  = false
#  configuration.fixture_path = 'vendor/plugins/pivotal_core_bundle/spec/fixtures/'
#  configuration.global_fixtures = :all
#end