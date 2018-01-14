class CaptainsController < ApplicationController
  before_action :set_captain, only: [:destroy, :show, :edit, :update]
  def show
  end

  def new
    @captain = Captain.new
  end

  def create
    @captain = Captain.new(captain_params)
    @captain.wins = 0
    @captain.looses = 0
    if @captain.save
      redirect_to arena_path
    else
      render 'captains/new'
    end

  end

  def edit
  end

  def update
    if @captain.update(captain_params)
      redirect_to arena_path
    else
      render 'captains/new'
    end
  end

  def destroy
    @captain.destroy
    redirect_to arena_path
  end

  private

  def captain_params
    params.require(:captain).permit(:name, :description, :life_point, :attack_power, :fav_attack, :photo)
  end

  def set_captain
    @captain = Captain.find(params[:id])
  end

end
