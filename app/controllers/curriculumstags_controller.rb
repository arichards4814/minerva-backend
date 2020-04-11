class CurriculumstagsController < ApplicationController

    def create 
        currtag = Curriculumstag.new(curr_tag_params)

        if currtag.save
            render json: currtag
        else 
            render json: {errors: currtag.errors.full_messages}
        end
    end

    private



    def curr_tag_params
        params.require(:curriculumstag).permit(:curriculum_id, :tag_id)
    end

end
