Rails.application.routes.draw do
  get '/live_assets/hello', to: 'live_assets#hello'
  get '/live_assets/sse', to: 'live_assets#sse'
end
