class Local < ActiveRecord::Base
  attr_accessible :district_name, :district_id
  belongs_to :district 
  attr_accessible :address, :description, :map_url, :phone
  has_many :district


  validates_presence_of :description, :message => '^ Debes ingresar una descricion'
  validates_presence_of :address, :message => '^ Debes ingresar una direccion'
  validates_presence_of :map_url, :message => '^ Debes ingresar un URL de google Maps'
  validates_presence_of :phone, :message => '^ Debes ingresar un nombre de distrito'

end
