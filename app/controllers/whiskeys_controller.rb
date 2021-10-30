class WhiskeysController < ApplicationController
  
  before_action :find_whiskey, only: [:show, :edit, :update, :destroy]

  def index
    @whiskeys = Whiskey.all
  end

  def show
    
  end

  def new 
    @whiskey = Whiskey.new
  end

  def create
    @whiskey = Whiskey.new(whiskey_params)
    if @whiskey.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @whiskey.update(whiskey_params)
      redirect_to whiskey_path(@whiskey)
    else 
      render 'edit'
    end
  end

  def destroy
  end
  
  private 

    def whiskey_params
      params.require(:whiskey).permit(:name, :description, :style)
    end

    def find_whiskey
      @whiskey = Whiskey.find(params[:id])
    end

  
end
