Rails.application.routes.draw do
  get 'pages/info'

  root :to => redirect('/colorpalettes')
  get    '/colorpalettes'           => 'colorpalettes#index'

  get    '/colorpalettes/new'       => 'colorpalettes#new', as: 'new_colorpalette'
  get    '/colorpalettes/:id/edit'  => 'colorpalettes#edit', as: 'edit_colorpalette'
  get    '/colorpalettes/:id'       => 'colorpalettes#show', as: 'colorpalette'

  post   '/colorpalettes'           => 'colorpalettes#create'
  patch  '/colorpalettes/:id'       => 'colorpalettes#update'
  put    '/colorpalettes/:id'       => 'colorpalettes#update'

  delete '/colorpalettes/:id'       => 'colorpalettes#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
