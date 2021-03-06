# frozen_string_literal: true

Rails.application.routes.draw do
  root "home#me"

  get "blog" => "posts#index"
  get "blog/*id" => "posts#show", as: :blog_post
  get "tags" => "tags#index"
  get "tags/:id" => "tags#show", as: :tag
  get "quotes" => "quotes#index"
  get "contributions" => "contributions#index"
end
