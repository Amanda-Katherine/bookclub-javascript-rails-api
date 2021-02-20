#this page created from customer user auth documentation (not used with Devise)
class SessionsController < ApplicationController
    # include CurrentMemberConcern

    def create
        @member = Member
        .find_by(email: session_params[:email])
        .try(:authenticate, session_params[:password])
        if @member 
            login!
            # binding.pry
            render json: {
                logged_in: true,
                member: @member,
                session: session
            },
            status: :created 
        else 
            render json: { 
                status: 401,
             errors: 'No such member. Verify credentials and try again or sign up'
            }
        end
    end

    def is_logged_in? 
        if logged_in? && current_member
            render json: {
                logged_in: true,
                member: current_member
            }
         else
             render json: {
                 logged_in: false,
                 message: 'no such member'
            }
        end
    end

    def destroy
        # session[:member_id] = nil
       logout!

        render json: { 
            status: 200, 
            logged_out: true 
        }
    end

    def session_params
        params.require(:member).permit(:email, :password)
    end
end

#use the below code in your terminal to test if the session will accept a POST request 
#step one: start the rails s backend server
#step two: copy and paste the below into the terminal and run it (make sure you've cd'ed into the backend main directory)
# curl --header "Content-Type: application/json" \
# > --request POST \
# > --data '{"member": {"email": "test@test.com", "password": "pass"}}' \
# > http://localhost:3000/sessions