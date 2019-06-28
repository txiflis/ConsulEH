ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../Gemfile", __dir__)

<<<<<<< HEAD
require 'bundler/setup' # Set up gems listed in the Gemfile.

require 'rails/commands/server'
module Rails
  class Server
    def default_options
      super.merge(Host:  '0.0.0.0', Port: 3000)
    end
  end
end
=======
require "bundler/setup" # Set up gems listed in the Gemfile.
>>>>>>> upstream/capistrano
