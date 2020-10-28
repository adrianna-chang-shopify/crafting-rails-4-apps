Dummy::Application.routes.draw do
  get "/handlers/rb_handler", to: "handlers#rb_handler"
  get "/handlers/string_handler", to: "handlers#string_handler"
end
