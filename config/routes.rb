Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/actors/:id" => "actors#show"
    
    get "/movies" => "movies#index"
    get "/movies/query" => "movies#show"
    get "/movies/:id" => "movies#show"
    post "/movies" => "movies#create"
    patch "movies/:id" => "movies#update"
    delete "movies/:id" => "movies#destroy"
  end
end
