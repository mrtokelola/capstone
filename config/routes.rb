Rails.application.routes.draw do
  
  get "/" => "prescriptions#index"
  get "/prescriptions" => "prescriptions#index"
  get "/prescriptions/new" => "prescriptions#new"
  post "/prescriptions" => "prescriptions#create"
  get "/prescriptions/:id/edit" => "prescriptions#edit"
  get "/prescriptions/:id" => "prescriptions#show"
  patch "/prescriptions/:id" => "prescriptions#update"
  post "/prescriptions/:id" => "prescriptions#destroy"


  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"


  
end
