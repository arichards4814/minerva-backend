class NotesController < ApplicationController


    def create
        note = Note.new(note_params)
        
        if note.save
            render json: note
        else 
            render json: {errors: note.errors.full_messages}
        end
    end



    def destroy 
        note = Note.find(params[:id])
        note.destroy()
    end

    private


    def note_params
        params.require(:note).permit(:notebook_id, :material_time_stamp, :content)
    end
end
