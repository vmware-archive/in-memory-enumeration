require 'rails'
require 'in_memory_enumeration/in_memory_enumeration'

module Pivotal
  class InMemoryEnumeration
    class Railtie < ::Rails::Engine
      config.autoload_paths << File.expand_path(File.join(File.dirname(__FILE__), 'clock'))
      # config.before_configuration do
      #   ::Clock.use_mock_clock? ? require("clock/mock_clock") : require('clock/real_clock')
      # end
    end
  end
end