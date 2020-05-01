class SubscriptionsController < ApplicationController


    def create
        subscription = Subscription.new(subscription_params)
        
        if subscription.save
            render json: subscription
        else 
            render json: {errors: subscription.errors.full_messages}
        end
    end

    def userssubscriptions

        currentUser = User.find(params[:id])
        

        render json: currentUser.subscriptions
    end



    def destroy 
        subscription = Subscription.find(params[:id])
        subscription.destroy()
    end

    private


    def subscription_params
        params.require(:subscription).permit(:user_id, :curriculum_id)
    end
end
