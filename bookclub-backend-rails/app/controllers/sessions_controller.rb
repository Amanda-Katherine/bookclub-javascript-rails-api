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
