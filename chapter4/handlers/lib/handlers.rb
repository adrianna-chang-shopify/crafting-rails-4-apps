require "handlers/railtie"
require "action_view/template"
require "rdiscount"

ActionView::Template.register_template_handler :rb, lambda { |_, source| source }
ActionView::Template.register_template_handler :string, lambda { |_, source| "%Q{#{source}}" }
ActionView::Template.register_template_handler :md, lambda { |_, source| "RDiscount.new(#{source.inspect}).to_html" }

module Handlers
  # Your code goes here...
end
