Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/products_path" => "products#all_products"
    get "/product_path" => "products#single_product"
    get "/product_path_url_segment/:id" => "products#single_product_url"
  end
end
