class FavoritesController < ApplicationController
  before_action :authenticate_user!
  def index
    @user_id = current_user.id
    @fav = Favorite_Recipe.where(user_id: @user_id)
    @rec = Recipe.all


  end

  def new

    @@fav = Recipe.find(params[:id]).id
    n = Favorite_Recipe.new
    n.recipe_id = @@fav
    n.user_id = User.find(current_user).id
    n.save

  end

  def create

    redirect_to "/favorites"
  end

  def show
    @rec = Recipe.all
    @fav = Favorite_Recipe.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy
    @fav = Favorite_Recipe.find(params[:id])
    @fav.destroy
    redirect_to "/favorites"
  end

end
