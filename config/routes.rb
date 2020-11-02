Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/products" => "products#index"
    get "/product_path" => "products#single_product_query"
    get "/products/:id" => "products#show"
  end
end
