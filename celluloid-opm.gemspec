# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'celluloid-opm/version'

Gem::Specification.new do |gem|
  gem.name          = 'celluloid-opm'
  gem.version       = Celluloid::Opm::VERSION
  gem.authors       = ['Kevin Hyland']
  gem.email         = ['khy@me.com']
  gem.description   = 'Simple object prevalence for Celluloid'
  gem.summary       = 'Celluloid::OPM automatically serializes and persists any calls made on a Celluloid object, allowing for a prevalent system.'
  gem.homepage      = 'http://github.com/khy/celluloid-opm'

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(/spec/)
  gem.require_paths = ['lib']

  gem.add_dependency 'celluloid'

  gem.add_development_dependency 'rspec'
end
