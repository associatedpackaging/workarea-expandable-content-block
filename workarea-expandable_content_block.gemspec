$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "workarea/expandable_content_block/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "workarea-expandable_content_block"
  s.version     = Workarea::ExpandableContentBlock::VERSION
  s.authors     = ["Jake Beresford"]
  s.email       = ["jberesford@weblinc.com"]
  s.homepage    = "https://github.com/workarea-commerce/workarea-expandable-content-block"
  s.summary     = "Expandable content block."
  s.description = "A simple single accordion-style content block with one title/
  body section. Useful for FAQ style pages."

  s.files = `git ls-files`.split("\n")

  s.add_dependency "workarea", "~> 3.x"
end
