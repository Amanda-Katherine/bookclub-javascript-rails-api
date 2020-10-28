class GatheringsController < ApplicationController
    def index
        gatherings = Gathering.all
        render json: gatherings
    end
end
