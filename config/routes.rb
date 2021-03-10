Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    # USERS
    get "/users/:id" => "users#show"
    post "/users" => "users#create" 
    # SESSIONS
    post "/sessions" => "sessions#create"

  end

end
