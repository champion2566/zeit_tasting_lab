Rails.application.routes.draw do

  root 'panels#menu'

  scope :controller => "panels", :path => "/panels" do
    get 'menu' => :menu
  end

  scope :path => "api/v1" do
    resources :users, controller: 'api/v1/users'
    resources :sections, controller: 'api/v1/sections'
    resources :menus, controller: 'api/v1/menus'
    resources :tags, controller: 'api/v1/tags'
    resources :matches, controller: 'api/v1/matches'
    resources :items, controller: 'api/v1/items'
    resources :categories, controller: 'api/v1/categories'
    resources :root_categories, controller: 'api/v1/root_categories'
  end

end
