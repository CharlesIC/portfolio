Rails.application.routes.draw do
  root "pages#welcome"
  get "portfolio" => "pages#portfolio", as: :portfolio
  get "about" => "pages#about", as: :about
end
