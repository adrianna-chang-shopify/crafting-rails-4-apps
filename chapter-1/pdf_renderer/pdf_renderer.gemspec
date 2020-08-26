$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "pdf_renderer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "pdf_renderer"
  spec.version     = PdfRenderer::VERSION
  spec.authors     = ["Adrianna Chang"]
  spec.email       = ["adrianna.chang@shopify.com"]
  spec.homepage    = "https://github.com/adrianna-chang-shopify/crafting-rails-4-apps"
  spec.summary     = "PDF Renderer Plugin"
  spec.description = "Plugin so that Rails can render PDFs"
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

  spec.add_dependency "rails", "~> 6.0.3", ">= 6.0.3.1"
  spec.add_dependency "prawn", "0.12.0"

  spec.add_development_dependency "sqlite3"
end
