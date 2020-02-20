class DosesController < ApplicationController
  def new
    @ingredients = Ingredient.all
    @cocktail =  Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail =  Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.find(params[:dose][:ingredient])
    @dose = Dose.new(unlock_params)
    @dose.cocktail = @cocktail
    @dose.ingredient = @ingredient
    if @dose.save
      redirect_to cocktail_url(@dose.cocktail)
    else
      render 'doses/new'
    end
  end

  def destroy
    dose = Dose.find(params[:id])
    dose.destroy
    redirect_to cocktail_url(dose.cocktail)
  end

  private

  def unlock_params
    params.require(:dose).permit(:ingredients, :description)
  end

end
