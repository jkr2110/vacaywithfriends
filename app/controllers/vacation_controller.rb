class VacationController < ApplicationController

	def index 

		@vacation = Vacation.all(:order => "created_at desc")

	end 

	def new 

		#this is where a form will appear
		@vacation = Vacation.new
		3.times { @vacation.beats.build }
		
	end 

	def create 
		# this will be invoked when the POST from the form comes in

		@vacation = Vacation.new(params[:vacation])

		if @vacation.valid? and @vacation.save
			#yay!
			redirect_to vacation_path
		else
			#uh-oh, something went wrong.
			render :action => :new		
		end 
	end 
end

