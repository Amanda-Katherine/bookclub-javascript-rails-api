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
        render json: {message: suggestion.errors.full_messages}
      end
    end

    def show
      suggestion = Suggestion.find_by(id: params["id"])
    end
    
    def update
      suggestion = Suggestion.find_by(id: params["id"])
      suggestion.vote = params["vote"]

      if suggestion.save
        render json: suggestion
      else 
        render json: {message: suggestion.errors.full_messages}
      end
    end

    private

    def suggestion_params
        params.require(:suggestion).permit(:vote, :book_id, :book_group_id)
    end
end
