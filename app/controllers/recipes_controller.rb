class RecipesController < ApplicationController
  def index
    @recipe = Recipe.all
    if params[:search]
    @recipe = Recipe.search(params[:search]).order("created_at DESC")
  else
    @recipe = Recipe.all.order('created_at DESC')
  end
  end

  def new

    @rec = Recipe.new
  end

  def create
    @recipe = Recipe.create(params.require(:recipe).permit(:dish, :preptime, :cooktime, :ingredients, :steps))
    redirect_to "/recipes"
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit

    @rec = Recipe.find(params[:id])

  end

  def update
    @rec = Recipe.find(params[:id])
    @rec.update_attributes(params.require(:recipe).permit(:dish, :preptime, :cooktime, :ingredients, :steps))
    redirect_to "/recipes"
  end

  def destroy

    @rec = Recipe.find(params[:id])
    @rec.destroy
    redirect_to "/recipes"
  end


end
