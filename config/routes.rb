Rails.application.routes.draw do
  namespace :api do
    get '/my_name_is' => 'parameters#string_query'
    get '/Ay_name' => 'parameters#ay_name_query'
  end
end
