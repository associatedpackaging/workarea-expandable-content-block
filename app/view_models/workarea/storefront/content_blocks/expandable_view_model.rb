module Workarea
  module Storefront
    module ContentBlocks
      class ExpandableViewModel < ContentBlockViewModel
        include ActionView::RecordIdentifier

        def heading_id
          dom_id(model, "heading")
        end

        def body_id
          dom_id(model, "body")
        end
      end
    end
  end
end
