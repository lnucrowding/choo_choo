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

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "factory_girl_rails"
end
