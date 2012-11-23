# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'opium/version'

Gem::Specification.new do |gem|
  gem.name          = 'opium'
  gem.version       = Opium::VERSION
  gem.authors       = ['Kevin Hyland']
  gem.email         = ['khy@me.com']
  gem.description   = 'Simple object prevalence.'
  gem.summary       = 'Simple object prevalence.'
  gem.homepage      = 'http://github.com/khy/opium'

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(/spec/)
  gem.require_paths = ['lib']

  gem.add_dependency 'celluloid'
  gem.add_dependency 'oj'

  gem.add_development_dependency 'rspec'
end
