# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.11' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem 'will_paginate', :version => '~> 2.3.11'
  config.gem 'paperclip', :version => '~> 2.3.11'
  config.gem "ajaxful_rating"
  config.time_zone = 'UTC'
  require 'will_paginate'
  require 'paperclip'
end
