class SessionsController < ApplicationController
    def new
    end

    def create
        #authenticate the user 
        submitted_email = params[:session][:email] #sree@gmail.com
        submitted_password = params[:session][:password] #qwertyui

        u = User.find_by(email: submitted_email)

        if u && u.authenticate(submitted_password)
            #create a session
            session[:user_id] = u.id 
            redirect_to root_url
        else
            render :new
        end

      
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_url
    end
end
