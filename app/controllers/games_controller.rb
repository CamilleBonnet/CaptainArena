class GamesController < ApplicationController
  before_action :set_game, only: [:show, :destroy]
  def home
  end

  def index
    @captains = Captain.all.order(name: :asc)
    @captains_ranked = Captain.all.order(wins: :desc, looses: :asc)
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.life_A = Captain.find(@game.player_A).life_point
    @game.life_B = Captain.find(@game.player_B).life_point
    @game.status = "Fight open!"
    if @game.player_A != @game.player_B && @game.save
      redirect_to arena_path
    else
      if @game.player_A == @game.player_B
        flash[:alert] = "Player A can be equal to Player B"
      else
        flash[:alert] = "New game could not be created"
      end
      render 'games/new'
    end
  end

  def destroy
    @game.destroy
    redirect_to arena_path
  end

  private

  def game_params
    params.require(:game).permit(:player_A, :player_B)
  end

  def set_game
    @game = Game.find(params[:id])
  end

end
