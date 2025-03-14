class GamesController < ApplicationController
  def homepage
    render "homepage"  # Renders homepage.erb
  end

  def play
    @player_choice = params[:move]
    @computer_choice = ["rock", "paper", "scissors"].sample

    @result =
      if @player_choice == @computer_choice
        "We tied!"
      elsif (@player_choice == "rock" && @computer_choice == "scissors") ||
            (@player_choice == "paper" && @computer_choice == "rock") ||
            (@player_choice == "scissors" && @computer_choice == "paper")
        "We won!"
      else
        "We lost!"
      end

    render "results"  # Renders results.erb
  end
end
