class GamesController < ApplicationController
  def home
  end

  def show
    @captains = Captain.all
  end
end
