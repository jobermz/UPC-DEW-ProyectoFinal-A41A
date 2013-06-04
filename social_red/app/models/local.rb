class Local < ActiveRecord::Base
  

 attr_accessible :address, :description, :map_url, :phone, :district_id
 belongs_to :district
 has_many :districts

 

#class Book < ActiveRecord::Base
#  attr_accessible :title, :author_id
# belongs_to :author
#  has_many :user_books
# has_many :users, :through => :user_books
#end


validates_presence_of :description, :message => '^ Debes ingresar una breve descripcion'
validates_presence_of :address, :message => '^ Debes ingresar una direcion'
validates_presence_of :phone, :message => '^ Debes ingresar un numero de telefono'
validates_presence_of :map_url, :message => '^ Debes ingresar un URL de Google MAPS'
validates_presence_of :district_id, :message => '^ Debes Elegir un distrito'

  

 


end
