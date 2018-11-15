class PagesController < ApplicationController
  def my_offices
    @office_spaces = OfficeSpace.where(owner: current_user)
  end
end
