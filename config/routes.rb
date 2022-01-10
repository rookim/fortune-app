Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # generate random fortune
  get "/my_fortune", controller: "my_examples", action: "random_fortunes"

  # return 6 random numbers
  get "/predict_lotto", controller: "my_examples", action: "lotto_win"

  #records number of visits/refreshes, apparently impossible
  get "/"
end
