class ApplicationController < ActionController::Base
    helper_method :current_user

    private 
        def current_user
            user_id = session[:user_id]
            # if user_id
            #     return User.find(user_id)
            # else
            #     return nil
            # end
            user_id && User.find(user_id)
        end
end
