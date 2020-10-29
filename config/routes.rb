Magic::Link::Engine.routes.draw do
  resources :magic_links, only: [:new, :create]
  match "/magic_links/authenticate", to: "magic_links#authenticate", as: :authenticate, via: [:get, :post]
end
