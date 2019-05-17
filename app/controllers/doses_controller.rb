class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @cocktail = Cocktail.new(dose_params)
    @dose.cocktail = @cocktail
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render "cocktails/show"
    end
  end

  def destroy

  end





  private

  def doses_params
    params.require(:dose).permit(:cocktail, :ingredient)
  end
end
