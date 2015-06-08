class FlightsController < ApplicationController
	def index
		@flights = Flight.all
		@start_locations = Airport.all.map { |a| [a.code, a.id]}
		@destinations = Airport.all.map { |a| [a.code, a.id]}
		@departure_times = @flights.all.order("departure_time ASC")
		@num_passengers = (1..4).map { |n| [n,n] }

		@results = Flight.search(params[:search])
	end

	private


end