require "handlers/railtie"
require "action_view/template"
require "rdiscount"

ActionView::Template.register_template_handler :rb, lambda { |_, source| source }
ActionView::Template.register_template_handler :string, lambda { |_, source| "%Q{#{source}}" }
ActionView::Template.register_template_handler :md, lambda { |_, source| "RDiscount.new(#{source.inspect}).to_html" }

module Handlers
  module MERB
    def self.erb_handler
      @@erb_handler ||= ActionView::Template.registered_template_handler(:erb)
    end

    def self.call(template, source)
      compiled_source = erb_handler.call(template, source)
      "RDiscount.new(begin;#{compiled_source};end).to_html"
    end
  end
end

ActionView::Template.register_template_handler :merb, Handlers::MERB
