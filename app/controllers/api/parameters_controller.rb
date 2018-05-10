class Api::ParametersController < ApplicationController
  def name_game
    @name = params["name"].upcase
    render 'your_name_is.json.jbuilder'
  end

  def ay_name_query
    @name = params["name"].downcase
    if @name.start_with?("a") 
      @message = "Hey, your name starts with the first letter of the alphabet!" 
    render 'ay_name.json.jbuilder'
    else
      render 'your_name_is.json.jbuilder'
    end
  end

  def guessing_game
    @guess = params["guess"].to_i
    @answer = 73
    
    if @guess > @answer
      @hint = "guess lower"
    elsif @guess < @answer
      @hint = "guess higher"
    else
      @hint = "Stop digging, you won!"
    end
    render 'guessing_game.json.jbuilder'
  end

  def url_guessing_game
    @guess = params["wildcard"].to_i
    @answer = 73
    
    if @guess > @answer
      @hint = "guess lower"
    elsif @guess < @answer
      @hint = "guess higher"
    else
      @hint = "Stop digging, you won!"
    end
    render 'url_guessing_game.json.jbuilder'
  end

end
