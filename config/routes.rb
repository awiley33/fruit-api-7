Rails.application.routes.draw do
  root "welcome#index"
  get 'fruits', to: 'fruits#index'
  get 'fruits/nutritional', to: 'fruits#show'
end
