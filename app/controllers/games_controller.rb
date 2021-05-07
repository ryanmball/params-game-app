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
      output_message = "Too high! Guess again."
    elsif user_guess < number
      output_message = "Too low! Guess again."
    elsif user_guess == number
      output_message = "That is correct! The number is #{number}."
    end
    render json: {message: output_message}
  end

  def credentials
    if params[:username].downcase == "hugh" && params[:password].downcase == "swordfish"
      output_message = "Valid credentials."
    else
      output_message = "Invalid credentials."
    end
    render json: {message: output_message}
  end
end


