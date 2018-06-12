Rails.application.routes.draw do
  resources :tranos
devise_for :users, path: 'users'
# eg. http://localhost:3000/users/sign_in
devise_for :mpaneras, path: 'mpaneras'
# eg. http://localhost:3000/admins/sign_in
get 'page/index'
get 'page/logement'
get 'page/elouer'
get 'page/landing'
get 'page/profilepage'
root 'page#landing'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
