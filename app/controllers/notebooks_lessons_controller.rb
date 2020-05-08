class NotebooksLessonsController < ApplicationController
   
    def create
        notebookslessons = NotebooksLesson.new(notebooks_lessons_params)

        if(request.headers["ReplaceMaterial"])
               l = Lesson.find(notebooks_lessons_params[:lesson_id])
               n = Notebook.find(notebooks_lessons_params[:notebook_id])
               n.update(material_url: l.material_url)
        end

        if notebookslessons.save
            render json: {n: notebookslessons, material_url: l.material_url}
        else
            render json: {errors: notebookslessons.errors.full_messages}
        end
    end

    private



    def notebooks_lessons_params
        params.require(:notebooks_lesson).permit(:lesson_id, :notebook_id)
    end
end
