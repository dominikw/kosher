# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'kosher/version'

Gem::Specification.new do |s|
  s.name        = 'kosher'
  s.version     = Kosher::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Paper Cavalier']
  s.email       = 'code@papercavalier.com'
  s.homepage    = 'https://rubygems.org/gems/kosher'
  s.summary     = %q{An overengineered abstraction of book trading}
  s.description = %q{Kosher abstracts online book trading into a set of models.}

 {
    'rspec'         => '~> 2.6',
  }.each do |lib, version|
    s.add_development_dependency lib, version
  end

 {
    'money'         => '~> 3.7.1',
    'structure'     => '~> 0.7.1'
  }.each do |lib, version|
    s.add_runtime_dependency lib, version
  end

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end
