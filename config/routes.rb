Rails.application.routes.draw do
  devise_for :users
  # scope :hoge do
  #   match '',            to:'hoge#hoge',      via:'get',  as:'hoge'
  #   match '/hogehoge',   to:'hoge#hogehoge',  via:'get',  as:'hoge_hoge'
  # end

  root 'home#index'

  scope :home do
    match '',   to:'home#show',    via:'get',  as:'home'
  end

  scope :receive_words do
    match '',       to:'receive_words#index',  via:'get',  as:'receive_words'
    match '/show',  to:'receive_words#show',   via:'get',  as:'receive_words_show'
  end

  scope :send_words do
    match '',         to:'send_words#index',   via:'get',  as:'send_words'
    match '/new',     to:'send_words#new',     via:'get',  as:'send_words_new'
    match '/create',  to:'send_words#create',  via:'post', as:'send_words_create'
  end

  # get '*', controller: 'application', action: 'render_404'
end
