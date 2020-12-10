class DreamsController < ApplicationController

  def index 
    @dreams = Dream.all 
  end

  def show 
    
  end
end
