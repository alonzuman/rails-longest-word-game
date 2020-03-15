require 'uri'
require 'json'

class GamesController < ApplicationController
  def new
    @letters_array = ('a'..'z').to_a.sample(10)
  end

  def score
    @user_guess = params[:word]
    @wagon_api = "https://wagon-dictionary.herokuapp.com/#{@user_guess}"
  end
end
