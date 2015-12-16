require 'babosa'

class College < ActiveRecord::Base
    extend FriendlyId
    friendly_id :cname, use: :slugged
    has_and_belongs_to_many :buildings
    
    def normalize_friendly_id(input)
        input.to_s.to_slug.normalize.to_s
    end
end