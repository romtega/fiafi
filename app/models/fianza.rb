class Fianza <ActiveRecord::Base
	
	belongs_to :user

	validates_presence_of :numerofianza

	validates :textofianza, attachment_presence: true
	has_attached_file :textofianza
	validates_attachment_content_type :textofianza,
	content_type: ['application/pdf'],
	message: "Solo se aceptan formatos pdf"

end