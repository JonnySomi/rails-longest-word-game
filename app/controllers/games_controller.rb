class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    @answer = params[:answer].upcase.split('')
    @letters_array = params[:letters_array].split(' ')
    if @answer.each do |letter|
          @letters_array.include?(letter)
        end
      @result = "Congratulations, #{@answer} is a valid english word!"
    # elsif
    else
      @result = 'Your word is not a valid word!'
    end
  end

end
