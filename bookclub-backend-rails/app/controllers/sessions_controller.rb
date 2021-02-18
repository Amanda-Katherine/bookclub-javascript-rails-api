#this page created from customer user auth documentation (not used with Devise)
class SessionsController < ApplicationController
    include CurrentMemberConcern
    # skip_before_action :verify_authenticity_token

    def create
        binding.pry
        member = Member
        .find_by(email: params[:member][:email])
        .try(:authenticate, params[:member][:password])

        if member 
            session[:member_id] = member.id
            render json: {
                status: :created, 
                logged_in: true,
                member: member 
            }
        else 
            render json: { status: 401 }
        end
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

    def destroy # was called logout for custom user auth
        # reset_session # from custom user auth method
        session[:member_id] = nil
        # session.delete(:user_id)  #test this if above doesn't work

        render json: { status: 200, logged_out: true }
    end
end

#use the below code in your terminal to test if the session will accept a POST request 
#step one: start the rails s backend server
#step two: copy and paste the below into the terminal and run it (make sure you've cd'ed into the backend main directory)
# curl --header "Content-Type: application/json" \
# > --request POST \
# > --data '{"member": {"email": "test@test.com", "password": "pass"}}' \
# > http://localhost:3000/sessions