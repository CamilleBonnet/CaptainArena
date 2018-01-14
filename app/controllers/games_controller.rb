class GamesController < ApplicationController
  def home
  end

  def show
    @captains = Captain.all.order(name: :asc)
    @captains_ranked = Captain.all.order(wins: :desc, looses: :asc)
  end
end
