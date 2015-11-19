class Building < ActiveRecord::Base
    belongs_to :college
    has_many :loos
end
