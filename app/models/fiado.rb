class Fiado < ActiveRecord::Base
	validates_presence_of :nombre
	validates_presence_of :direccion
	validates_presence_of :rfc
	validates_presence_of :email
	validates_presence_of :telefono

	belongs_to :user
	has_attached_file :cdf
	has_attached_file :ife
	has_attached_file :cf
	has_attached_file :da
	has_attached_file :ac
	has_attached_file :mac
	has_attached_file :ah
	has_attached_file :ber
	has_attached_file :cc
end
