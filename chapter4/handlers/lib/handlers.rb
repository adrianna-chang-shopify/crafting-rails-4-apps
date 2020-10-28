require "handlers/railtie"
require "action_view/template"

ActionView::Template.register_template_handler :rb, lambda { |_, source| source }

module Handlers
  # Your code goes here...
end
