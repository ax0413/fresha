class BuildingsCollege < ActiveRecord::Base
  belongs_to :building
  belongs_to :college
end
