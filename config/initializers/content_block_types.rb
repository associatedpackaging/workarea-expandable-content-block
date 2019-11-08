Workarea::Content.define_block_types do
  block_type "Expandable" do
    description "Expandable content block for displaying content in a single accordion"
    view_model "Workarea::Storefront::ContentBlocks::ExpandableViewModel"

    field "Heading", :string, default: "Expandable heading"
    field "Body", :text, default: "<h2>Body</h2><p>#{Workarea.config.placeholder_text}</p>"
    field "Default Open", :boolean, default: false
  end
end
