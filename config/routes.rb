Rails.application.routes.draw do
  
  resources :reviews
  resources :applications
  devise_for :gyms, path_names: { sign_in: 'login', sign_out: 'logout'}
  devise_for :trainers, path_names: { sign_in: 'login', sign_out: 'logout'}
  devise_for :trainees,path_names: { sign_in: 'login', sign_out: 'logout'}
  root to:'home#index'
  get'home/about', to: 'home#about'
  get'home/category', to:'home#category'
  resources :gyms
  resources :trainers
  resources :trainees
end
