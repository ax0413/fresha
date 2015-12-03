class StaticPagesController < ApplicationController
    def home
        render layout: false
    end
    
    def main
        @buildings = Building.all
    end
end
