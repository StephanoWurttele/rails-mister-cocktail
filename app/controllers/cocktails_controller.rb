class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
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
      redirect_to cocktail_url(@cocktail[:id])
    else
      render('new')
    end
  end

  private
  
  def unlock_params
    params.require(:cocktail).permit(:name)
  end

end
