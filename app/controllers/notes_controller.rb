class NotesController < ApplicationController

    def index 
        @notes = Note.all 
    end

    def new 
        @note = Note.new 
    end

    def create 
    end

    def edit 
    end

    def show
    end

    def destroy 
    end



    private 

    def notes_params
    end

end
