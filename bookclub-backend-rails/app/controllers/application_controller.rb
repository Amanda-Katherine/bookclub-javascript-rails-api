class ApplicationController < ActionController::Base
# class ApplicationController < ActionController::API
    skip_before_action :verify_authenticity_token #added because javascript frontend doesn't using js for frontend.  A rails frontend would auto-create this authenticity token. 

    helper_method :login!, :logged_in?, :authorized_member?#, :current_member (destroy is in sessions controller and see current_member in controller/concerns)

    def login!
        session[:member_id] = @member.id
    end

    def logged_in?
        if @current_member
            render json: {
                logged_in: true, 
                member: @current_member
            }
        else
            render json: {
                logged_in: false
            }
        end
    end

    #currently not using this method. Look to use or delete
    # def authorized_member?
    #     @member == @current_member
    # end
end
