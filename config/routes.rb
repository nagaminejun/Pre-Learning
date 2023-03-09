Rails.application.routes.draw do
  scope :users do
    resources :articles
  end

  devise_for :users, controllers: {
    registrations: "users/registrations",#"devise/registrations" #ここに"users/registrations"を入れるとルーティングエラーなる、、
  }
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  get 'comments/dash_boards'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_scope :user do # deviseに新しくパスを追加したい場合にdevise_scopeを使う。(これを使わないとエラーが発生。）
    #↑ users にすると遷移しない、単数のmodel名にしないといけないはず
    root 'devise/registrations#dash_boards'
    get 'users/dash_boards', to: 'devise/registrations#dash_boards'
    #resources :articles
  end
end


