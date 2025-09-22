Rails.application.routes.draw do
  root 'books#index'

  resources :books

  devise_for :admins, controllers: {
    omniauth_callbacks: 'admins/omniauth_callbacks'
  }

  devise_scope :admin do
    get 'admins/sign_in',  to: 'admins/sessions#new',     as: :new_admin_session
    get 'admins/sign_out', to: 'admins/sessions#destroy', as: :destroy_admin_session
    # NOTE: sign_out is usually a DELETE to /admins/sign_out.
    # If you prefer RESTful sign out, use:
    # delete 'admins/sign_out', to: 'admins/sessions#destroy'
  end
end
