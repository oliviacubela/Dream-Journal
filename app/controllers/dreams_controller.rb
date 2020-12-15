class DreamsController < ApplicationController

  def show 
    @dream = Dream.find_by(params[:id])
  end

  def index 
  end

  # def show
  #   @dream = Dream.find(params[:id])
  # end

  # def index 
  #   @dreams = Dream.all 
  # end

  # def new 
  #   @dream = Dream.new 
  # end

  # def create 
  #   dream = Dream.create(dream_params) 
  #   redirect_to dream_path 
  # end

  # private 

  # def dream_params
  #   params.require(:dream).permit(:title, :content)
  # end

end
