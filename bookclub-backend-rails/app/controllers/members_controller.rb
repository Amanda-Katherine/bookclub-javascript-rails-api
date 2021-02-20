class MembersController < ApplicationController
    def index
        @members = Member.all
        
        if @members
            render json: {members: @members}
        else
            render json: {
                status: 500,
                errors: ['No members found']
            }
        end
    end

    def create 
        @member = Member.new(member_params)

        if @member.save
            login!
            render json: {
                status: :created,
                logged_in: true,
                member: @member,
                message: 'Member successfully created! You are now logged in.'
            }
        else
            render json: {
                status: 403,
                logged_in: false,
                errors: @member.errors.full_messages
            }
        end
    end

    def show
        @member = Member.find(params[:id])

        if @member
            render json: {member: @member}
        else
            render json: {
                status: 500,
                errors: ['Member not found.']
            }
        end
    end

    private

    def member_params
        params.require(:member).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
end
