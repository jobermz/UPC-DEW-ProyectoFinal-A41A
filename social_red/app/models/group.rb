class Group < ActiveRecord::Base
 attr_accessible :name
  belongs_to :menber
  belongs_to :genre
  

end
