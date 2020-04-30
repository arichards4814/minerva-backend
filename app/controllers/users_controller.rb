class UsersController < ApplicationController

    def show
        user = User.find(params[:id])
        render json: user
    end

    def login
        user = User.find_by(username: params[:username])

        

        if user && user.authenticate(params[:password])
            #JWT authentication here... send the token 
            token = JWT.encode({user_id: user.id}, "super_secret_code")
            render json: {user: user, token: token}
        else
            render json: {errors: "Incorrect username or password."}
        end
    end

    def create 
        user = User.new(username: params[:username], email: params[:email], password: params[:password])
        puts user

        if user.save
            #JWT authentication here... send the token 
            token = JWT.encode({user_id: user.id}, "super_secret_code")
            render json: {user: user, token: token}
        else 
            puts user.errors.full_messages
            render json: {errors: user.errors.full_messages}
        end
    end 

end
