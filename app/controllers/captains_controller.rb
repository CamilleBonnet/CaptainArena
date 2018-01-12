class CaptainsController < ApplicationController
  def show
  end

  def new
    @captain = Captain.new
  end

  def create
    @captain = Captain.create(captain_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def captain_params
    params.require(:captain).permit(:name, :description, :life_point, :attack_power, :fav_attack)
  end

  def set_captain
  end

end
