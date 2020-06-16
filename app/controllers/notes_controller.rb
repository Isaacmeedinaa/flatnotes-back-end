class NotesController < ApplicationController
    def index
        @notes = Note.all
        render json: @notes
    end

    def show
        @note = Note.find_by(id: params[:id])
        render json: @note
    end

    def create
        @note = Note.create(title: params[:title], content: params[:content], user_id: params[:user_id])
        render json: @note
    end

    def destroy
        @note = Note.find_by(id: params[:id])
        @note.destroy
        render json: { status: 200, message: "Note deleted" }
    end
end
