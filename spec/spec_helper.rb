require 'rubygems'
require 'bundler/setup'
require 'rspec'
require 'fabrication'

require File.expand_path('../../lib/kosher', __FILE__)

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }
