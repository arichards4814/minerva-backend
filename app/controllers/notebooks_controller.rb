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
    
    def pin
        notebook = Notebook.find(params[:id])
        notebook.update(pinned: true)
        render json: notebook
    end

    def unpin
        notebook = Notebook.find(params[:id])
        notebook.update(pinned: false)
        render json: notebook
    end


    def create
        notebook = Notebook.new({
            material_url: notebooks_params[:material_url],
            title: notebooks_params[:title],
            user_id: session_user.id})
        
    
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

    def destroy 
        notebook = Notebook.find(params[:id])
        notebook.destroy()
    end
        
    private


    def notebooks_params
        params.require(:notebook).permit(:user_id, :material_url, :title)
    end

end
