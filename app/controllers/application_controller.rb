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
        puts "---------"
        puts request.headers["TweetUrl"]
        puts "---------"
        request.headers["TweetUrl"]
    end


    def fetch_tweet
        #BASE_URL = ""

        #x = HTTParty.get("https://publish.twitter.com/oembed?url=https://twitter.com/shl/status/1257669211997917186")

        x = HTTParty.get("https://publish.twitter.com/oembed?url=#{get_tweet_header}")
        
        render json: x
    end

end
