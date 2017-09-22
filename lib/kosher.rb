# External dependencies.
require 'money'
require 'virtus'

# Internal dependencies.
%w(price dispatch item location seller offer serializer).each do |model|
  require "kosher/#{model}"
end
