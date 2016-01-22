class Fiado < ActiveRecord::Base
	extend FriendlyId
	friendly_id :nombre, use: :slugged
	belongs_to :user

	validates_presence_of :nombre
	validates_presence_of :direccion
	validates_presence_of :rfc
	validates_presence_of :email
	validates_presence_of :telefono

	validates :cdf,  attachment_presence: false
	validates :ife, attachment_presence: false 
	validates :cf, attachment_presence: false
	validates :da, attachment_presence: false
	validates :ac, attachment_presence: false
	validates :mac, attachment_presence: false
	validates :ah, attachment_presence: false
	validates :ber, attachment_presence: false
	validates :cc, attachment_presence: false


	has_attached_file :cdf
	has_attached_file :ife
	has_attached_file :cf
	has_attached_file :da
	has_attached_file :ac
	has_attached_file :mac
	has_attached_file :ah
	has_attached_file :ber
	has_attached_file :cc

	validates_attachment_content_type :cdf,
	content_type: ['application/pdf', 'image/jpeg'],
	message: "Solo se aceptan formatos pdf o jpeg"
	validates_attachment_content_type :ife,
	content_type: ['application/pdf'],
	message: "Solo se aceptan formatos pdf"
	validates_attachment_content_type :cf,
	content_type: ['application/pdf'],
	message: "Solo se aceptan formatos pdf"
	validates_attachment_content_type :da,
	content_type: ['application/pdf'],
	message: "Solo se aceptan formatos pdf"
	validates_attachment_content_type :ac,
	content_type: ['application/pdf'],
	message: "Solo se aceptan formatos pdf"
	validates_attachment_content_type :mac,
	content_type: ['application/pdf'],
	message: "Solo se aceptan formatos pdf"
	validates_attachment_content_type :ah,
	content_type: ['application/pdf'],
	message: "Solo se aceptan formatos pdf"
	validates_attachment_content_type :ber,
	content_type: ['application/pdf'],
	message: "Solo se aceptan formatos pdf"
	validates_attachment_content_type :cc,
	content_type: ['application/pdf'],
	message: "Solo se aceptan formatos pdf"
end
