class Local < ActiveRecord::Base
  attr_accessible :district_name, :district_id
  belongs_to :district 
  attr_accessible :address, :description, :map_url, :phone
  has_many :district

validates_presence_of :district_name, :message => '^ Debes Elegir un distrito'
validates_presence_of :address, :message => '^ Debes ingresar una direcion'
validates_presence_of :description, :message => '^ Debes ingresar una breve descripcion'
validates_presence_of :map_url, :message => '^ Debes ingresar un URL de Google MAPS'
validates_presence_of :phone, :message => '^ Debes ingresar un numero de telefono'


end
