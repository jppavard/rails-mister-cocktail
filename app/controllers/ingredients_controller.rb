class IngredientsController < ApplicationController
   before_action :set_ingredient, only: %i[show]

  def index
    @ingredients = Ingredient.all
  end

  def show
  end

  def new
    @ingredient = Ingredient.new
    @dose = Dose.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to cocktails_path, notice: 'Ingredient was successfully created.'
    else
      render :new
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
 # Use callbacks to share common setup or constraints between actions.
  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
