module Workarea
  module ExpandableContentBlock
    class Engine < ::Rails::Engine
      include Workarea::Plugin
      isolate_namespace Workarea::ExpandableContentBlock
    end
  end
end
