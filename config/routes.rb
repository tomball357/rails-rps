Rails.application.routes.draw do
  root "games#homepage"  # Now references "homepage.erb"

  get "/rock", to: "games#play", defaults: { move: "rock" }
  get "/paper", to: "games#play", defaults: { move: "paper" }
  get "/scissors", to: "games#play", defaults: { move: "scissors" }
end
