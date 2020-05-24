# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fiscal/version'

Gem::Specification.new do |spec|
  spec.name          = "fiscal"
  spec.version       = Fiscal::VERSION
  spec.authors       = ["Geordee Naliyath"]
  spec.email         = ["geordee@gmail.com"]
  spec.summary       = %q{Get the fiscal period attributes for various countries}
  spec.description   = %q{The "fiscal" gem helps to retrieve the fiscal year, half year, quarter and month along with start and end dates for many countries.}
  spec.homepage      = "https://github.com/samyukti/fiscal"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
