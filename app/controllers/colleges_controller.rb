class CollegesController < ApplicationController
    def index
        @colleges = College.all
    end
    
    def buildings
        slug = params[:slug]
        @buildings = College.find_by(slug: slug).buildings.order(:bname)
    end
end
