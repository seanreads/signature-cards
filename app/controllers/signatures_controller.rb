class SignaturesController < ApplicationController

	def create
		@signature = Signature.create!(params[:signature])
		redirect_to card_path(params[:signature][:card_id])
	end

end