Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  put '/graduation-date/:username', to: 'users#upsert', defaults: { format: 'json' }
  get '/graduation-date/:username', to: 'users#is_graduated'
end

