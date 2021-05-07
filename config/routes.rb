Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  #Query Parameters - localhost:3000/path?key=value
  #Will still run without having a value in the URL
  get "user_name" => "games#user_name"

  get "query_number_guesser" => "games#number_guesser"



  #URL Segment Parameters - localhost:3000/path/value
  #Route path contains the key - :key_name
  #Will produce error if there is no value passed in the URL
  get "user_name/:user_name" => "games#user_name"

  get "url_number_guesser/:user_guess" => "games#number_guesser"



  #Body Parameters - POST web request verb (more security), Multipart Form (gives interface to pass key/value pairings)
  #Does not use URL for parameters, parameters are submitted in the body form
  #Would be used for entering login info, etc.
  post "body_number_guesser/" => "games#number_guesser"

  post "credentials" => "games#credentials"
end
