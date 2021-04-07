require 'http'

class EpisodesController < ApplicationController
  def index
    @episodes = JSON.parse(HTTP.get('https://tarea-1-breaking-bad.herokuapp.com/api/episodes').to_s)
  end
end
