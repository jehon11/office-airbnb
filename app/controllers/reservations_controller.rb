class ReservationsController < ApplicationController
  def new
    @office_space = OfficeSpace.find(params[:office_space_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @office_space = OfficeSpace.find(params[:office_space_id])
    @reservation.office_space = @office_space
    if @reservation.save
      redirect_to office_space(@office_space)
    else
      render :new
    end
  end

  def reservation_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:reservation).permit(:check_in, :check_out)
  end
end
