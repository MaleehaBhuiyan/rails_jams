class ArtistsController < ApplicationController
    def index 
        @artists = Artist.all 
    end 

    def show 
        @artist = Artist.find(params[:id])
    end 

    def new 
        @aritst = Artist.new 
    end 

    def create 
        @artist = Artist.new
        @artist[:name]=params[:artist][:name]
        @artist[:age]=params[:artist][:age]
        @artist[:bio]=params[:artist][:bio]
        @artist.save 
        redirect_to @artist
    end 



end 