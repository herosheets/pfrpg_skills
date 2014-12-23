$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "pfrpg_skills/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "pfrpg_skills"
  s.version     = PfrpgSkills::VERSION
  s.authors     = ["Jordan OMara"]
  s.email       = ["jordan@herosheets.com"]
  s.homepage    = "http://herosheets.com"
  s.summary     = "Generic PFRPG skills"
  s.description = "skills"

  s.files = Dir["{lib}/**/*", "LICENSE", "Rakefile", "README.rdoc"]
end
