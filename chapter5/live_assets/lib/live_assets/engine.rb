module LiveAssets
  class Engine < ::Rails::Engine
    initializer "live_assets.assets.precompile" do |app|
      app.config.assets.precompile += %w( live_assets/application.js )
    end
  end
end
