Rails.application.routes.draw do
  scope :users do
    resources :articles
  end

  devise_for :users, controllers: {
    registrations: "users/registrations",#"devise/registrations" #ここに"users/registrations"を入れるとルーティングエラーなる、、
  }
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  get 'comments/dash_boards'
  #root 'comments#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    #get 'users/dash_boards', to: 'devise/registrations#index'#, as: :index_user_registration
    #get 'dash_boards_2', to: 'devise/confirmations#show' #, constraints: { dash_boards.1 /[^\/]+/ }
    #root 'users/registrations#index'
    root 'devise/registrations#dash_boards'
    get 'users/dash_boards', to: 'devise/registrations#dash_boards'
    #resources :articles
  end
end


