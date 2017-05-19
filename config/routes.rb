Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "cocktails#index"
  mount Attachinary::Engine => "/attachinary"
  resources :cocktails, except: [ :destroy, :edit, :update ] do
    resources :doses, only: [ :new, :create ]
  end

  resources :doses, only: [ :destroy ]
  #resources :cocktails, except: [ :destroy, :edit, :update ] do
    #member do
   #   get 'ingredients', to: "cocktails#ingredients"
    #end
  #end
end
