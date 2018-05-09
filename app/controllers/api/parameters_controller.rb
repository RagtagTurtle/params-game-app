class Api::ParametersController < ApplicationController
  def string_query
    @name = params["name"]
    render 'your_name_is.json.jbuilder'
  end

  def ay_name_query
    @name = params["name"]
    if @name.start_with?("a")
      @name_2 = "Hey, your name starts with the first letter of the alphabet!" 
    render 'ay_name.json.jbuilder'
    else
      render 'your_name_is.json.jbuilder'
    end
  end

end
