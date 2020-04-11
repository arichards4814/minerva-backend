class UsersController < ApplicationController

    def create 
        user = User.new(username: params[:username], email: params[:email], password: params[:password])
        puts user

        if user.save
            render json: user
        else 
            puts user.errors.full_messages
            render json: {errors: user.errors.full_messages}
        end
    end 

end
