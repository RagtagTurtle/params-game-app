Rails.application.routes.draw do
  namespace :api do
    get '/my_name_is' => 'parameters#name_game'
    get '/Ay_name' => 'parameters#ay_name_query'
    get '/lets_guess_some_numbers' => 'parameters#guessing_game'
    get '/url_segment/:wildcard' => 'parameters#url_guessing_game'
  end
end
