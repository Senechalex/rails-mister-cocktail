class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    # @review = Review.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'new'
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end

# class CocktailsController < ApplicationController
#   before_action :set_cocktail, only: [:show, :edit]

#   def index
#     @cocktails = Cocktail.all
#   end

#   def show
#   end

#   def new
#     @cocktail = Cocktail.new
#   end

#   def create
#     @cocktail = Cocktail.new(cocktail_params)
#     if @cocktail.save
#       redirect_to cocktail_path(@cocktail)
#     else
#       render :new
#     end
#   end

#   def edit
#   end

#   def update
#     @cockail.update(cocktail_params)
#     redirect_to cocktail_path(@cocktail)
#   end

#   def destroy
#     @cocktail = Cocktail.find(params[:id])
#     @cocktail.destroy
#   end

#   private

#   def cocktail_params
#     params.require(:cocktail).permit(:name, :dose_id, :ingredient_id)
#   end

#   def set_cocktail
#     @cocktail = Cocktail.find(params[:id])
#   end
# end
