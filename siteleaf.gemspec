# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'siteleaf/version'

Gem::Specification.new do |gem|
  gem.name          = "siteleaf"
  gem.version       = Siteleaf::VERSION
  gem.authors       = ["Siteleaf"]
  gem.email         = ["api@siteleaf.com"]
  gem.description   = %q{A Ruby interface and command line utility for the Siteleaf API.}
  gem.summary       = "Siteleaf Ruby interface"
  gem.homepage      = "http://siteleaf.com"
  
  # gem.required_ruby_version = '>= 1.9.2'
  
  gem.add_dependency 'rest-client'
  gem.add_dependency 'json'
  # gem.add_dependency 'liquid'

  gem.files         = `git ls-files`.split($/)
  gem.files         += Dir.glob("lib/**/*.rb")
  gem.executables   = ["siteleaf"]
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end