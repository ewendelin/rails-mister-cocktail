class DosesController < ApplicationController
  before_action find_dose
  def index

  end

  def show

  end

  def new

  end

  def create

  end


  def destroy

  end

  private

  def doses_params
    params.require(:dose).permit(:description)
  end

  def find_dose
    @dose = Dose.find(params[:id])
  end

end

