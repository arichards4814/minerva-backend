class NotebooksController < ApplicationController
    
    def index
        notebooks = Notebook.all 
        render json: notebooks
    end

    def show
        notebook = Notebook.find(params[:id])
        render json: notebook.to_json(include: [:notes])
    end
        
end
