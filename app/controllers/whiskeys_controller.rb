class WhiskeysController < ApplicationController

  def index
  end

  def show
  end

  def new 
    @whiskey = Whiskey.new
  end

  def create
    @whiskey = Whiskey.new
  end

  def edit
  end

  def update
  end

  def delete
  end
  
  private 

    def whiskey_params
      params.require(:whiskey).permit(:name, :description, :brand)
    end
  
end
