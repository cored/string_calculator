# -*- encoding: utf-8 -*-
require File.expand_path('../lib/string_calculator/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Rafael George"]
  gem.email         = ["george.rafael@gmail.com"]
  gem.description   = %q{String Calculator Kata}
  gem.summary       = %q{String Calculator Kata}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "string_calculator"
  gem.require_paths = ["lib"]
  gem.version       = StringCalculator::VERSION

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rb-inotify'
  gem.add_development_dependency 'libnotify'
  gem.add_development_dependency 'guard'
  gem.add_development_dependency 'guard-rspec'
end
