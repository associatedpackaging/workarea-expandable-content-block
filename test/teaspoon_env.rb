require "workarea/testing/teaspoon"

Teaspoon.configure do |config|
  config.root = Workarea::ExpandableContentBlock::Engine.root
  Workarea::Teaspoon.apply(config)
end
