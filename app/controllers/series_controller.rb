require 'http'

class SeriesController < ApplicationController
  before_action :set_dato, only: [:show, :edit, :update, :destroy]

  def index
    @episodes = JSON.parse(HTTP.get('https://tarea-1-breaking-bad.herokuapp.com/api/episodes').to_s)
  end

  def show
  end

  def new
    @serie = Serie.new
  end

  def edit
  end

end

