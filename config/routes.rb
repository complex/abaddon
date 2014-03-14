Abaddon::Application.routes.draw do

  root to: redirect('/events')

  resources :events do
    resources :occurrences
  end

end
