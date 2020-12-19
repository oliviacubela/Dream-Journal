class DreamsController < ApplicationController

  def index 
    @dreams = Dream.all 
  end

  def new 
    @dream = Dream.new
  end

  def create 
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
    params.require(:dream).permit(:title, :content, :theme_id, :theme_name, :user_id)
  end

end
