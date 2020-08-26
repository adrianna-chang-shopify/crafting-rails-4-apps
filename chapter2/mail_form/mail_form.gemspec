$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "mail_form/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "mail_form"
  spec.version     = MailForm::VERSION
  spec.authors     = ["Adrianna Chang"]
  spec.email       = ["adrianna.chang@shopify.com"]
  spec.homepage    = "https://github.com/adrianna-chang-shopify/crafting-rails-4-apps"
  spec.summary     = "Mail Form"
  spec.description = "Mail form takes a POST request, validates the params, and then sends an email to a specified address"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.3", ">= 6.0.3.2"

  spec.add_development_dependency "sqlite3"
end
