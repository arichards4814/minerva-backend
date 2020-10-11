class StudybudsController < ApplicationController



    def usersstudybuds 
        currentUser = User.find(params[:id])
        
        render json: currentUser.studybuds
    end

    def create 

    end


    private 

    def studybud_params
        params.require(:studybuds).permit(:id, :user_id, :title)
    end


end