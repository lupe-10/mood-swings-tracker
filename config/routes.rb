Rails.application.routes.draw do
  devise_for :psychologists, path: 'psychologists', controller: { session: 'user/session' }
  devise_for :patients, path: 'patients', controller: { session: 'patient/session' }
  devise_for :admins, path: 'admins', controller: { session: 'admin/session' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
