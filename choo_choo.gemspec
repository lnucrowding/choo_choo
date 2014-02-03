# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'choo_choo/version'

Gem::Specification.new do |spec|
  spec.name          = "choo_choo"
  spec.version       = ChooChoo::VERSION
  spec.authors       = ["alcesleo"]
  spec.email         = ["lagginglion@gmail.com"]
  spec.summary       = %q{A dynamic activity feed for your rails app.}
  # spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'public_activity', '~> 1.4', '>= 1.4.1'

  spec.add_development_dependency "bundler", '~> 1.5', '>= 1.5.2'
  spec.add_development_dependency "rake", '~> 10.1', '>= 10.1.1'
  spec.add_development_dependency "rspec", '~> 2.14', '>= 2.14.1'
  spec.add_development_dependency "factory_girl", '~> 4.3', '>= 4.3.0'
end
