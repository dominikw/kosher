require 'vcr'

VCR.config do |c|
  c.cassette_library_dir     = "#{File.dirname(__FILE__)}/../fixtures/cassette_library"
  c.stub_with                  :webmock
  c.ignore_localhost         = true
  c.default_cassette_options = { :record => :new_episodes, :match_requests_on  => [:host] }
end

RSpec.configure do |config|
  config.extend VCR::RSpec::Macros
end
