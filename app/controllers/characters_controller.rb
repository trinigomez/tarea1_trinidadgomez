class CharactersController < ApplicationController

    def show
        name = params[:name].split.join("+")
        @character = JSON.parse(HTTP.get('https://tarea-1-breaking-bad.herokuapp.com/api/characters?name=' + name).to_s)[0]
        @quotes = JSON.parse(HTTP.get('https://tarea-1-breaking-bad.herokuapp.com/api/quote?author=' + name).to_s)
    end

    def search
        @busqueda = params[:q]
        search = params[:q].split.join("+")
        @results = JSON.parse(HTTP.get('https://tarea-1-breaking-bad.herokuapp.com/api/characters?name=' + search).to_s)
        while true
            if @results.length == 10
                @results = @results + JSON.parse(HTTP.get('https://tarea-1-breaking-bad.herokuapp.com/api/characters?name=' + search + '&limit=10&offset=10').to_s)
            else
                break
            end
        end
    end
end
