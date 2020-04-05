class LessonsController < ApplicationController

    def create
        lesson = Lesson.new(lessons_params)
        
        if lesson.save
            render json: lesson
        else 
            render json: {errors: lesson.errors.full_messages}
        end
    end

    private


    def lessons_params
        params.require(:lesson).permit(:id, :curriculum_id, :title, :material_url, :description, :image_url, :lesson_type, :cost)
    end

end
