Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations"#"devise/registrations" #ここに"users/registrations"を入れるとルーティングエラーなる、、
  }
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
  #root 'comments#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get 'index', to: 'devise/registrations#index'#, as: :index_user_registration
    root 'users/registrations#index'
  end
end


