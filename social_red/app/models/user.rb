class User < ActiveRecord::Base
  belongs_to :sex
  belongs_to :person_type
  belongs_to :identity_document_type
  attr_accessible :father_name, :mail, :mother_name, :name, :password
end
