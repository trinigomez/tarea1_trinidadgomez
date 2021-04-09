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
        i = 10 
        while true
            more = JSON.parse(HTTP.get('https://tarea-1-breaking-bad.herokuapp.com/api/characters?name=' + search + '&limit=10&offset=' + i.to_s).to_s)
            if more.empty?
                break
            else
                @results = @results + more
                i = i + 10
            end
        end

    end
end
