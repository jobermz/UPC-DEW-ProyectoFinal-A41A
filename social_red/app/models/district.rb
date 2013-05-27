class District < ActiveRecord::Base
  attr_accessible :district_name
  has_many :locals
  validates_presence_of :district_name, :message => '^ Debes ingresar un nombre de distrito'
end
