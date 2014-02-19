$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "choo_choo/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "choo_choo"
  s.version     = ChooChoo::VERSION
  s.authors     = ["metsson", "alexicon79", "alcesleo"]
  s.email       = ["merkur@live.se", "ah@alxhall.se", "lagginglion@gmail.com"]
  s.homepage    = "https://github.com/lnucrowding/choo_choo"
  s.summary     = "Lightweight dynamic activity feed."
  # s.description = "TODO: Description of ChooChoo."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 3.2.16"
  # s.add_dependency "jquery-rails"

  # testing
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
  s.test_files = Dir["spec/**/*"]

  s.add_development_dependency "sqlite3"
end
