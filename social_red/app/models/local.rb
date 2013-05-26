class Local < ActiveRecord::Base
  belongs_to :district
  attr_accessible :address, :description, :map_url, :phone
end
