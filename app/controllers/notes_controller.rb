class NotesController < ApplicationController

    #before_filter :authenticate_student!

    def index 
        #binding.pry
        @notes = Note.all 
    end

    def new 
        @note = Note.new 
    end

    def create 
        @note = Note.find_or_create_by(notes_params)
        if @ride 
            redirect_to note_path(@note)
        else
            render :new
        end
    end

    def show
        @note = Note.find(params[:id])
        #binding.pry
    end

    def edit
        @note = Note.find_by(id: params[:id])
    end

    def update
        @note = Note.find_by(id: params[:id])
        @note.update(notes_params)
        redirect_to note_path(@note)
    end


    def destroy
        @note = Note.find_by(params[:id])
        @note.destroy
        redirect_to notes_path                     
    end

    
    private 

    def notes_params
        params.require(:note).permit(:title, :content)
    end

end
