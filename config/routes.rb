Rails.application.routes.draw do
  devise_for :users
  resources :employees
  root to: "employees#index"
  # get 'employees/index'
  # get 'employees/show'
  # get 'employees/new'
  # get 'employees/create'
  # get 'employees/edit'
  # get 'employees/update'
  # get 'employees/destroy'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
