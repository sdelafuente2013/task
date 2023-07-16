class RecipesController < ApplicationController
  before_action :set_recipe, only: [:edit, :update, :destroy]

  def index
    @recipes = Recipe.all
    $redis.set("mi_clave", "santiagoxD")

    valor = $redis.get("mi_clave")
    puts valor
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to root_path
    else
      render :new
    end
  end
  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe, notice: 'Receta actualizada exitivamente.'
    else
      render :edit
    end
  end

  def destroy
    @recipe.destroy

    if @recipe.destroy
      flash[:notice] = 'Receta eliminada exitosamente.'
    else
      flash[:alert] = 'Hubo un error al eliminar la receta.'
    end

    redirect_to root_path
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :description)
    # Asegúrate de actualizar la lista de parámetros permitidos con todos los atributos de tu modelo Recipe
  end
end
