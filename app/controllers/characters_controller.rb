class CharactersController < ApplicationController

    def show
        puts 'llegue hasta aca'
        name = params[:name].split.join("+")
        @character = JSON.parse(HTTP.get('https://tarea-1-breaking-bad.herokuapp.com/api/characters?name=' + name).to_s)[0]
    end
end
