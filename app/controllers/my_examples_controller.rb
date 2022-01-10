class MyExamplesController < ApplicationController
  def random_fortunes
    array = [
      "You'll get a job as a software developer in the near future!",
      "You'll graduate from Actualize Coding Bootcamp!",
      "You'll fall more in love with programming!",
    ]
    number = rand(3)
    render json: { "Your fortune": array[number] } # can also do array.sample
  end

  def lotto_win
    array = []
    6.times do
      array << rand(1..60)
    end

    render json: { lotto_numbers: array }
  end

  def visits
    count = 0
    count += 1
    render json: { visit_count: count }
  end
end
