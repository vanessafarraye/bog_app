Rails.application.routes.draw do
    root to: 'creatures#index'

    # Add prefixes to routes using `as: "some_prefix"` syntax
    get '/creatures', to: 'creatures#index', as: "creatures"

    get '/creatures/new', to: 'creatures#new', as: "new_creature"

    get '/creatures/:id', to: 'creatures#show', as: "creature"

    get '/creatures/:id/edit', to: 'creatures#show', as: "edit_creature"        

    post "/creatures", to: "creatures#create"

    patch "/creatures/:id", to: "creatures#update"

    # the destroy route
    delete "/creatures/:id", to: "creatures#destroy"

end