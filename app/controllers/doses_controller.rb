class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    @dose.ingredient = Ingredient.find(dose_params[:ingredient_id]) unless dose_params[:ingredient_id].nil?
    if @dose.save
      redirect_to cocktail_path(@dose.cocktail)
    else
      @dose = Dose.new(dose_params)
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  # def find_dose
  #   @dose = Dose.find(params[:id])
  # end
end
