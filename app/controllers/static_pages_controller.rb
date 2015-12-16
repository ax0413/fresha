class StaticPagesController < ApplicationController
    def home
        @quote = Quote.offset(rand(Quote.count)).first
        render layout: false
    end
    
    def main
        @buildings = Building.all
        @comment = Comment.offset(rand(Comment.count)).first
    end
end
