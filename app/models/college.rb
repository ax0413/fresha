class College < ActiveRecord::Base
    has_many :buildings
    has_many :loos
end
