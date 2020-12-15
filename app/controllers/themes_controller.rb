class ThemesController < ApplicationController

  def index
    @themes = Theme.all 
  end

  def show 
  end

  private

  def set_theme 
    @theme = Theme.find(params[:id])
  end

  def theme_params
    params.require(:theme).permit(:name, :description)
  end

  # def new 
  #   @theme = Theme.new 
  # end

  # def create 
  #   @theme = Theme.new(theme_params)
  #   @theme.user_id = session[:user_id]
  #   if @theme.save 
  #     redirect_to theme_path(@theme)
  #   else
  #     render :new
  #   end
  # end

  # def index 
  #   @themes = Theme.all 
  # end

  # def show 
  #   @theme = Theme.find_by_id(params[:id])
  # end

  # private 

  # def theme_params
  #   params.require(:theme).permit(:name, :description, :dream_id, dream_attributes: [:title])
  # end
end
