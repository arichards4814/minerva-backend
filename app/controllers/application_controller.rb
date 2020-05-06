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


    def fetch_tweet
        #BASE_URL = ""
        request = HTTParty.get('https://publish.twitter.com/oembed?url=https://twitter.com/shl/status/1257669211997917186')
        
        render json: request
    end

end
