class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
    @cocktail = Cocktail.new
    @clicked_cocktail
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(unlock_params)
    if @cocktail.save
      redirect_to cocktails_url
    else
      redirect_to cocktails_url
    end
  end

  private
  
  def unlock_params
    params.require(:cocktail).permit(:name, :img_url, :desc)
  end

end
