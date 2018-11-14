class PagesController < ApplicationController


  def my_reservations
    @reservations = Reservation.where(user: current_user)
  end


end
