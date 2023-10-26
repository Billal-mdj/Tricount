Rails.application.routes.draw do
  devise_for :users

  # Resources for the Expense model
  resources :expenses
  resources :participants
  resources :payments
  # ... (autres routes)
end

