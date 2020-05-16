class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    @micropost = Micropost.find(params[:micropost_id])
    current_user.favorite!(@micropost)
  end

  def destroy
    @micropost = Favorite.find(params[:id]).micropost
    current_user.unfavorite!(@micropost)
  end
end
