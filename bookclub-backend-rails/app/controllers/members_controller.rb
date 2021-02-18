class MembersController < ApplicationController
    def index
        members = Member.all
        render json: members
    end

    def create 
        member = Member.new(member_params)
        binding.pry

        if member.save
            session[:member_id] = member.id
            render json: {
                status: :created,
                logged_in: true,
                member: member
            }
        else
            render json: {
                status: 403,
                logged_in: false
            }
        end
    end
end
