$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "activemerchant_i18n/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "activemerchant_i18n"
  s.version     = ActivemerchantI18n::VERSION
  s.authors     = ["Ruslan Kornev"]
  s.email       = ["oganer@gmail.com"]
  s.homepage    = "http://example.com"
  s.summary     = "Summary of ActivemerchantI18n."
  s.description = "Description of ActivemerchantI18n."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.22"
  s.add_dependency "activemerchant", "1.31.1"
  s.add_dependency "active_utils", "1.0.5"
  s.add_dependency "i18n"

  s.add_development_dependency "sqlite3"
end
