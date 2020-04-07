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

    def usersnotebooks
        currentUser = User.find(params[:id])
        
        render json: currentUser.notebooks
    end
        
end
