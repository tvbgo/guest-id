Rails.application.routes.draw do
  devise_for :hotels, path: 'hotels', controllers: { sessions: "hotels/sessions", confirmations: "hotels/confirmations", registrations: "hotels/registrations", passwords: "hotels/passwords", mailer: "hotels/mailer"}
  devise_for :users, path: 'users'
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: :show do
    resources :fnrhs, only: [ :new, :create, :index, :show ]
  end
end
