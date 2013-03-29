R20130329Ecommerce::Application.routes.draw do
  root :to => 'welcome#index'
  resources :products, :only => [:new, :create, :index] do
    collection do
      get 'search'
      get 'filter/:tag', :action => :filter, :as => :filter
    end
  end

  get '/login'  => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
