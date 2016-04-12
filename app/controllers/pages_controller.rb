class PagesController < ApplicationController

	def home
		if current_user
			redirect_to fiados_path

		end
	end

end
