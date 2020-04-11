class TagsController < ApplicationController
   
    def create
       tag = Tag.find_or_create_by(name: params[:name])
    
        render json: tag
    end
end
