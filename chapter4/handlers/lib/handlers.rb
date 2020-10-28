require "handlers/railtie"
require "action_view/template"

ActionView::Template.register_template_handler :rb, lambda { |_, source| source }
ActionView::Template.register_template_handler :string, lambda { |_, source| "%Q{#{source}}" }

module Handlers
  # Your code goes here...
end
