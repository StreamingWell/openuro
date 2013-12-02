Openmicrosite::Application.routes.draw do

  # Home
  root :to => 'pages#preregistration'

  # Authentication
  devise_for :admins
  devise_for :users

  # Static pages
  get 'home' => 'pages#archive'
  get 'live' => 'pages#live'
  get 'live_jan_15' => 'pages#live_jan_15'
  get 'live_mar_6' => 'pages#live_mar_6'
  get 'archive' => 'pages#archive'
  get 'holding' => 'pages#holding'
  get 'login' => 'pages#login'
  get 'evaluation' => 'pages#evaluation'
  # get 'pi' => 'pages#pi'

  # Feedback/submissions
  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
  match 'feedback' => 'feedback#new', :as => 'feedback', :via => :get
  match 'feedback' => 'feedback#create', :as => 'feedback', :via => :post
end
