class DreamsController < ApplicationController

  def show
    @dream = Dream.find(params[:id])
  end

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
      render 'new'
    end
  end

  def update
    @dream = Dream.find(params[:id])
    @dream.update(dream_params)
    redirect_to dreams_path(@dream)
  end

  private 

  def dream_params
    params.require(:dream).permit(:title, :content, :id)
  end

end
