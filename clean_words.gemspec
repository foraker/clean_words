# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'clean_words/version'

Gem::Specification.new do |spec|
  spec.name          = "clean_words"
  spec.version       = CleanWords::VERSION
  spec.authors       = ["Jake Sutton"]
  spec.email         = ["jcs@foraker.com"]
  spec.summary       = %q{A clean (i.e. "kid friendly") random word generator.}
  spec.description   = %q{A random word generator featuring only words that would not be considered inappropriate for children of all ages.}
  spec.homepage      = "http://foraker.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
