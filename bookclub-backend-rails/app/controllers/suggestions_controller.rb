class SuggestionsController < ApplicationController
    def index
        suggestions = Suggestion.all
        render json: suggestions
    end

    def create
      suggestion = Suggestion.find_or_create_by(suggestion_params)
     
      if suggestion.save
        render json: suggestion
      else
        render json: {message:comment.errors.full_messages}
      end
    end


    private

    def suggestion_params
        params.require(:suggestion).permit(:vote, :book_id, :book_group_id)
    end
end
