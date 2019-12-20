# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'b/gem/problem/version'

Gem::Specification.new do |spec|
  spec.name          = "b-gem-problem"
  spec.version       = B::Gem::Problem::VERSION
  spec.authors       = ["Simon Williams"]
  spec.email         = ["simon@simonista.com"]
  spec.summary       = %q{Write a short summary. Required.}
  spec.description   = %q{Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = Dir.glob("lib/**/*")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'c-gem-problem'

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
