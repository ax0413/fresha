class ChoooseColController < ApplicationController
    def index
        @colleges = College.all
    end
end
