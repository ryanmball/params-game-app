class GamesController < ApplicationController
  def user_name
    user_name = params[:user_name].upcase
    if user_name[0] == "A"
      render json: {
        message1: "Your name is #{user_name}",
        message2: "Hey, your name starts with the first letter of the alphabet!"
      }
    else
      render json: {message: "Your name is #{user_name}"}
    end
  end

  def number_guesser
    number = 36
    user_guess = params[:user_guess].to_i
    if user_guess > number
      response = "Too high! Guess again."
    elsif user_guess < number
      response = "Too low! Guess again."
    elsif user_guess == number
      response = "That is correct! The number is #{number}."
    end
    render json: {message: response}
  end

  def credentials
    if params[:username].downcase == "hugh" && params[:password].downcase == "swordfish"
      response = "Valid credentials."
    else
      response = "Invalid credentials."
    end
    render json: {message: response}
  end
end


