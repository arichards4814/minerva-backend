class NotebooksController < ApplicationController
    
    def index
        #using a serializer
        notebooks = Notebook.all 
        render json: notebooks
    end

    def show
        #using a serializer
        notebook = Notebook.find(params[:id])
        render json: notebook
    end


    def create
        notebook = Notebook.new(notebooks_params)
        
        if notebook.save
            render json: notebook
        else 
            render json: {errors: notebook.errors.full_messages}
        end
    end

    def update 
        notebook = Notebook.find(params[:id])
        notebook.update(notebooks_params)

        render json: notebook
    end

    def usersnotebooks
        currentUser = User.find(params[:id])
        
        render json: currentUser.notebooks
    end
        
    private


    def notebooks_params
        params.require(:notebook).permit(:user_id, :material_url, :title)
    end

end
