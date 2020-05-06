class ApplicationController < ActionController::API

    def get_auth_header
        request.headers["Authorization"]
    end

    def decoded_token
        JWT.decode(get_auth_header, "super_secret_code")[0]["user_id"]
    end

    def session_user
        User.find_by(id: decoded_token)
    end


    def get_tweet_header
        request.headers["TweetUrl"]
    end


    def fetch_tweet
        x = HTTParty.get("https://publish.twitter.com/oembed?url=#{get_tweet_header}")
        render json: x
    end

end
