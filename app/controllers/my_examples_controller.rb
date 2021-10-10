class MyExamplesController < ApplicationController
  def random_fortune
    fortunes = ["Money is coming to you soon!", "You will receive bad news tomorrow.", "Nothing exciting will happen to you for the next month."]
    fortunes.shuffle!
    render json: {your_fortune: "#{fortunes[0]}"}
  end

  def lotto_numbers
    number = Random.new
    lotto_numbers =[]
    6.times do
      lotto_numbers << number.rand(60)
    end
    render json: {lotto_numbers: "#{lotto_numbers}"}
  end
  

end
