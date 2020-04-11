class UsersController < ApplicationController

    def show
        user = User.find(params[:id])
        render json: user
    end

    def login
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            render json: user
        else
            render json: {errors: "Incorrect username or password."}
        end
    end

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
