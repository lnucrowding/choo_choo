$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "choo_choo/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "choo_choo"
  s.version     = ChooChoo::VERSION
  s.authors     = ["lnucrowding"]
  s.email       = ["lagginglion@gmail.com"]
  s.homepage    = "https://github.com/lnucrowding/choo_choo/"
  s.summary     = "Dynamic activity feed"
  # s.description = "TODO: Description of ChooChoo."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.2"

  s.add_development_dependency "sqlite3"
end
