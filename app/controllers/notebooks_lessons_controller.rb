class NotebooksLessonsController < ApplicationController
   
    def create
        notebookslessons = NotebooksLesson.new(notebooks_lessons_params)

        if notebookslessons.save
            render json: notebookslessons
        else
            render json: {errors: notebookslessons.errors.full_messages}
        end
    end

    private



    def notebooks_lessons_params
        params.require(:notebooks_lesson).permit(:lesson_id, :notebook_id)
    end
end
