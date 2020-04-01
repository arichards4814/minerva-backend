class CurriculumsController < ApplicationController
    

    def index 
        curriculums = Curriculum.all 
        render json: curriculums
    end

    def show
        curriculum = Curriculum.find(params[:id])
        render json: curriculum.to_json(include: [:lessons])
    end

    def create
        user = Curriculum.new(curriculums_params)
        
        if user.save
            render json: user
        else 
            render json: {errors: user.errors.full_messages}
        end
    end

    def edit

    end

    def update

    end

    private 

    def curriculums_params
        params.require(:curriculum).permit(:user_id, :title, :description, :image_url)
    end

end
