class ReservationsController < ApplicationController
  def index
     @reservations = policy_scope(Reservation)
  end

  def new
    @office_space = OfficeSpace.find(params[:office_space_id])
    @reservation = Reservation.new
    authorize @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @office_space = OfficeSpace.find(params[:office_space_id])
    @reservation.office_space = @office_space
    @reservation.user = current_user
    authorize @reservation
    if @reservation.save
      redirect_to reservations_path
    else
      render 'office_space/show'
    end
  end

  def reservation_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:reservation).permit(:check_in, :check_out)
  end
end
