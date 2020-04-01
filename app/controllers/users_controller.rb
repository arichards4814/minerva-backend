class UsersController < ApplicationController

    def create 
        user = User.new(users_params)
        
        if user.save
            render json: user
        else 
            render json: {errors: user.errors.full_messages}
        end
    end 

    private

    def users_params
        params.require(:user).permit(:username, :password, :email)
    end
end
