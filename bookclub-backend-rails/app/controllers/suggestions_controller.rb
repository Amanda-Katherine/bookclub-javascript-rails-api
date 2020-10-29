class SuggestionsController < ApplicationController
    def index
        suggestions = Suggestion.all
        render json: suggestions
      end
end
