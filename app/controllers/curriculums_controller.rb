class CurriculumsController < ApplicationController
    

    def index 
        #using serializer
        curriculums = Curriculum.all 
        render json: curriculums
    end

    def userscurriculums
        currentUser = User.find(params[:id])
        
        render json: currentUser.curriculums
    end

    def show
        #using serializer
        curriculum = Curriculum.find(params[:id])
        render json: curriculum
        # render json: curriculum.to_json(include: [:lessons])
    end

    def create
        curriculum = Curriculum.new(curriculums_params)
        
        if curriculum.save
            render json: curriculum
        else 
            render json: {errors: curriculum.errors.full_messages}
        end
    end

     def uploadimage
        @item = Curriculum.find(params[:id])
        @item.image.attach(params[:image])
        @item.save
    end

    def edit    
        curriculum = Curriculum.find(params[:id])
        render json: curriculum
    end

    def update
        curriculum = Curriculum.find(params[:id])
        curriculum.update(curriculums_params)

        render json: curriculum
    end


    def destroy 
        curriculum = Curriculum.find(params[:id])
        curriculum.destroy()

    end

    private 

    def curriculums_params
        params.require(:curriculum).permit(:id, :user_id, :title, :description, :image_url)
    end

end
