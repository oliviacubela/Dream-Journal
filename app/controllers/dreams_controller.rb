class DreamsController < ApplicationController

  def index 
    @dreams = Dream.all 
  end

  def new 
    @dream = Dream.new
    @theme = @dream.build_theme
    # binding.pry
  end

  def create 
    # binding.pry
    @dream = current_user.dreams.build(dream_params)  #create current user method first,
    if @dream.save
      binding.pry
      redirect_to dreams_path(@dream)
    else
      binding.pry
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
    params.require(:dream).permit(:title, :content, :user_id, theme_attributes:[:name])
  end

end