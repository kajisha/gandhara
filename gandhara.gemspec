# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gandhara/version'

Gem::Specification.new do |spec|
  spec.name          = 'gandhara'
  spec.version       = Gandhara::VERSION
  spec.authors       = ['kajisha']
  spec.email         = ['kajisha@gmail.com']
  spec.summary       = %q{force timestamps to null:false, in rails4.}
  spec.description   = %q{force timestamps to null:false, in rails4.}
  spec.homepage      = 'https://github.com/kajisha/gandhara'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_runtime_dependency 'rails', '~> 4.0', '< 5.0'
end
