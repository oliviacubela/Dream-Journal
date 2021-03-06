class ThemesController < ApplicationController

  def new 
    @theme = Theme.new
  end

  def create 
    @theme = Theme.new(theme_params)

    if @theme.save
      redirect_to @theme
    else
      render :new
    end
  end

  def index 
    @themes = Theme.all
  end


  def show
    @theme = Theme.find(params[:id])
  end 

  private

  def theme_params
    params.require(:theme).permit(:name, :description)
  end
end