class ReservationsController < ApplicationController

  def index
     @reservations = policy_scope(Reservation)
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @office_space = OfficeSpace.find(params[:office_space_id])
    @reservation.office_space = @office_space
    @reservation.user = current_user
    authorize @reservation
    if @reservation.save
      render :confirm
    else
      render 'office_spaces/show'
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    authorize @reservation
    @reservation.destroy
    if @reservation.user == current_user
      redirect_to office_spaces_path
    else
      redirect_to my_office_path
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
    authorize @reservation
  end

  def reservation_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:reservation).permit(:check_in, :check_out, :usernumber)
  end
end
