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

    #  def uploadimage
    #     @item = Curriculum.find(params[:id])
    #     puts @item
    #     puts params
    #     @item.image.attach(params[:image])

    #     if @item.image.attached?
    #         render json: @item
    #     else 
    #         render json: {errors: @item.errors.full_messages}
    #     end
    # end
    def uploadimage
        if params[:file]
        # The data is a file upload coming from <input type="file" />
            @curriculum = Curriculum.find(params[:id])
            @curriculum.image.attach(params[:file])
            # Generate a url for easy display on the front end 
            photo = url_for(@curriculum.image)
        end
         # Now save that url in the profile
        if @curriculum.update(image_url: photo)
            render json: @curriculum, status: :ok
        end
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
