class DosesController < ApplicationController

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktails = Cocktail.find(params[:cocktail_id])
    @dose.ingredients = Ingredient.find(params[:ingredient_id])
    if @dose.save!
      redirect_to new_cocktail_dose_path(@dose)
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
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end

  def find_dose
    @dose = Dose.find(params[:id])
  end
end
