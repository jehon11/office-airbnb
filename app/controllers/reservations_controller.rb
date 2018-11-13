class ReservationsController < ApplicationController
  def new
    @office_space = OfficeSpace.find(params[:office_space_id])
    @reservation = Reservation.new
  end

  def create
  end
end
