Rails.application.routes.draw do
  devise_for :accounts

  root to: "public#homepage"
end
