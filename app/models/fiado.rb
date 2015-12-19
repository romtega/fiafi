class Fiado < ActiveRecord::Base
	validates_presence_of :nombre
	validates_presence_of :direccion
	validates_presence_of :rfc
	validates_presence_of :email
	validates_presence_of :telefono

	belongs_to :user
end
