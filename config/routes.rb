Rails.application.routes.draw do
 namespace :api do
  get '/my_name' => 'alphabets#my_name'
  get '/whats_in_a_name' => 'alphabets#check_word'
  get '/string_guess' => 'alphabets#string_guess' 
  get '/segment_guess/:guess' => 'alphatbets#segment_guess'
  post '/form_params' => 'alphabets#form_params'
 end
end
