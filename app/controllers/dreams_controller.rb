class DreamsController < ApplicationController

  def index 
    @dreams = Dream.all 
  end

  def new 
    @dream = Dream.new
    @theme = @dream.build_theme
  end

  def create 
    binding.pry
    @dream = Dream.new(dream_params) 
    if @dream.save
      redirect_to dreams_path(@dream)
    else
      render :new
    end
  end

  def show
    @dream = Dream.find(params[:id])
  end

  # def update
  #   @dream = Dream.find(params[:id])
  #   @dream.update(dream_params)
  #   redirect_to dreams_path(dream)
  # end

  private 

  def dream_params
    params.require(:dream).permit(:title, :content, :user_id, themes_attributes:[:name])
  end

end