class NewcommentController < ApplicationController
    def index
        @comments = Comment.all.reverse_order
    end
end
