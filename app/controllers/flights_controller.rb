class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map{ |u| [u.code, u.id]}
    @flights = Flight.all.map{ |u| [u.departure_date, u.id]}
  end
end
