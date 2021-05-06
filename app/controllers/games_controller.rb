class GamesController < ApplicationController
  def user_name
    user_name = params[:user_name]
    render json: {message: "Your name is #{user_name.upcase}"} 
  end
end
