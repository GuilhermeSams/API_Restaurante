Rails.application.routes.draw do
  devise_for :users, skip: :all
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do

      scope 'users' do
        get 'login', to: 'users#login'
        get 'logout', to: 'users#logout'
      end

      scope 'favorites' do
        post 'create', to: 'favorites#create'
        delete 'delete/:id', to: 'favorites#delete'
      end


      scope 'categories' do
        get 'index', to: 'categories#index'
        get 'show/:id', to: 'categories#show'
        post 'create', to: 'categories#create'
        patch 'update/:id', to: 'categories#update'
        delete 'delete/:id', to: 'categories#delete'
        get 'category_products/:id', to: 'categories#category_filter'
      end
    end
  end

  namespace 'api' do
    namespace 'v1' do
      scope 'products' do
        get 'index', to: 'products#index'
        get 'show/:id', to: 'products#show'
        post 'create', to: 'products#create'
        delete 'delete/:id', to: 'products#delete'
      end
    end
  end
end
