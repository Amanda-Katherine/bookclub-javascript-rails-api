class BookGroupsController < ApplicationController
    def index
        groups = BookGroup.all
        render json: groups
    end
end
