class GamesController < ApplicationController
  def user_name
    user_name = params[:user_name]
    if user_name[0] == "a"
      render json: {
        message1: "Your name is #{user_name.upcase}",
        message2: "Hey, your name starts with the first letter of the alphabet!"
      }
    else
      render json: {message: "Your name is #{user_name.upcase}"}
    end
  end

  def number_guesser
    number = 36
    user_guess = params[:user_guess].to_i
    if user_guess > number
      render json: {message: "Too high! Guess again."}
    elsif user_guess < number
      render json: {message: "Too low! Guess again."}
    elsif user_guess == number
      render json: {message: "That is correct! The number is #{number}."}
    end
  end
end
