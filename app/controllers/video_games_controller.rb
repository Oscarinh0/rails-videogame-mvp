class VideoGamesController < ApplicationController
def index
  @games = VideoGame.all
  end

  def show
    @game = VideoGame.find(params[:id])
  end

  def new
  	@game = VideoGame.new
  end

  def create
  	@game = VideoGame.new(game_params)
  	@game.save
  	redirect_to "/games"
  end
  
  def edit
  	@game = VideoGame.find(params[:id])
  end

  def update
  	@game = VideoGame.find(params[:id])
  	@game.update(game_params)
  	redirect_to "/games"
  end

  def destroy
    @game = VideoGame.find(params[:id])
    @game.destroy
    redirect_to "/games"
  end

  private
  

  def game_params
  	params.require(:game).permit(:name, :description, :rating, :image_url, :price)
  end
end

