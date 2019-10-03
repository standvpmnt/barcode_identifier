class TestController < ApplicationController 

	def start

	end

	def display
		@code = params[:bcode]
		# respond_to do |format|
		# 	format.js {render partial: 'test/display', collection: @code}
		# end
	end


end