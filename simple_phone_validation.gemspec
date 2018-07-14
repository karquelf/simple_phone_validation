$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "simple_phone_validation/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_phone_validation"
  s.version     = SimplePhoneValidation::VERSION
  s.authors     = ["Fabien Karquel"]
  s.email       = ["fabien.karquel@gmail.com"]
  s.homepage    = "https://github.com/karquelf/simple_phone_validation"
  s.summary     = "Summary of SimplePhoneValidation."
  s.description = "Description of SimplePhoneValidation."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0"

  s.add_development_dependency "sqlite3"
end
