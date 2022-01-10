class MyExamplesController < ApplicationController
  def random_fortunes
    array = ["You'll get a job as a software developer in the near future!", "You'll graduate from Actualize Coding Bootcamp!", "You'll fall more in love with programming!"]
    number = rand(3)
    render json: { "Your fortune": array[number] }
  end

  def lotto_win
    array = []
    6.times.each do
      x = rand(1..60)
      array << x
    end

    render json: array
  end

  def visits
  end
end
