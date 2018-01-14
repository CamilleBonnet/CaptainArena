class GamesController < ApplicationController
  before_action :set_game, only: [:show, :destroy, :fight]
  def home
  end

  def index
    @captains = Captain.all.order(name: :asc)
    @captains_ranked = Captain.all.order(wins: :desc, looses: :asc)
    @games = Game.all.order(id: :asc)
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
      redirect_to game_path(@game)
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

  def fight
    captain_a = Captain.find(@game.player_A)
    captain_b = Captain.find(@game.player_B)
    if ['a','b'].sample == 'a'
      @game.life_B -= captain_a.attack_power
      if @game.life_B <= 0
        @game.winner = captain_a.id
        captain_a.wins += 1
        captain_b.looses += 1
        @game.status = 'done'
        captain_a.save
        captain_b.save
      end
    else
      @game.life_A -= captain_b.attack_power
      if @game.life_A <= 0
        @game.winner = captain_b.id
        captain_b.wins += 1
        captain_a.looses += 1
        @game.status = 'done'
        captain_a.save
        captain_b.save
      end
    end
    @game.save
    redirect_to game_path(@game)
  end

  private

  def game_params
    params.require(:game).permit(:player_A, :player_B)
  end

  def set_game
    @game = Game.find(params[:id])
  end

end
