class WelcomeController < ApplicationController
	has_scope :shape, type: :array
	has_scope :gemtype, type: :array
	has_scope :stone, type: :array
	def home
	end

	def about
	end

	def admin
		render :layout => "applicationadmin"
	end

	def gemstone
		@admgemstonesall = apply_scopes(Admgemstone).all
		##@admgemstonesall=Admgemstone.all
		##@admgemstonesall=Admgemstone.where(shape: 'Round').load
		##@admgemstonesall=Admgemstone.where(shape: ["Round","Square","Trillium","Marquis","Pear"]).load
		render "welcome/gemstone"
	end
end