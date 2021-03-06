require 'http'

class BreakingBadController < ApplicationController

  def index
    @episodes = JSON.parse(HTTP.get('https://tarea-1-breaking-bad.herokuapp.com/api/episodes?series=Breaking+Bad').to_s)
    # tal vez haya que arreglar despues
    @num_seasons = @episodes[-1]["season"].to_i # indica que son 5 temporadas
    @show_season = params[:season]
  end

  def show
    @episode = JSON.parse(HTTP.get('https://tarea-1-breaking-bad.herokuapp.com/api/episodes/' + params[:id]).to_s)[0]
  end
end
