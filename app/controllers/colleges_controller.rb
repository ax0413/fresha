class CollegesController < ApplicationController
    def select
        @colleges = College.all
    end
end
