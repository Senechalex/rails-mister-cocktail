class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  # def edit
  # end

  # def update
  #   @dose.update(dose_params)
  #   redirect_to dose_path(@dose)
  # end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end


# class DosesController < ApplicationController
#   before_action :set_dose, only: [:show, :edit, :destroy]

#   def show
#   end

#   def new
#     @dose = Dose.new
#   end

#   def create
#     @dose = Dose.new(dose_params)
#     if @dose.save
#       redirect_to dose_path(@dose)
#     else
#       render :new
#     end
#   end


#   def destroy
#     @dose.destroy
#   end

#   private



#   def set_dose
#     @dose = Dose.find(params[:id])
#   end
# end
