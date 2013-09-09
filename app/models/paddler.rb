class Paddler < ActiveRecord::Base
  has_and_belongs_to_many :rosters

end
