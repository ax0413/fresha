class CollegesController < ApplicationController
    def index
        @colleges = College.all
    end
    
    def buildings
        slug = params[:slug]
        @college = College.find_by(slug: slug)
        @buildings = @college.buildings.order(:bname)
    end
end
