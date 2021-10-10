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

  def bottles_lyrics
    count = 99
    full_lyrics = ""
    100.times do
      if count >= 3
        full_lyrics << "#{count} bottles of beer on the wall, #{count} bottles of beer.
        Take one down and pass it around, #{count - 1} bottles of beer on the wall. "
        count = count - 1
      elsif count == 2
        full_lyrics << "#{count} bottles of beer on the wall, #{count} bottles of beer.
        Take one down and pass it around, #{count - 1} bottle of beer on the wall. "
        count = count - 1
      elsif count == 1
        full_lyrics << "#{count} bottles of beer on the wall, #{count} bottles of beer.
        Take one down and pass it around, no more bottles of beer on the wall. "
        count = count - 1
      elsif count == 0
        full_lyrics << "No more bottles of beer on the wall, no more bottles of beer.
        Go to the store and buy some more, 99 bottles of beer on the wall. "
      end
    end
    render json: {lyrics: full_lyrics}
  end

end
