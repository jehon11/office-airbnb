class OfficeSpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    @office_spaces = policy_scope(OfficeSpace)
      @office_spaces = OfficeSpace.where.not(latitude: nil, longitude: nil)
      @markers = @office_spaces.map do |office|
      {
        lng: office.longitude,
        lat: office.latitude,
          infoWindow: { content: render_to_string(partial: "/office_spaces/map_window", locals: { office: office }) }
          # this takes the html code of the partial and use it on the pop up tag. office instance is passed as
          # a variable to be use in the erb code
      }
      end
  end

  def show
    @office_space = OfficeSpace.find(params[:id])
    @reservation = Reservation.new

    @markers =
      [{
        lng: @office_space.longitude,
        lat: @office_space.latitude,
          infoWindow: { content: render_to_string(partial: "/office_spaces/map_window", locals: { office: @office_space }) }

      }]

    @review = Review.new
    authorize @office_space
  end

  def new
    @office_space = OfficeSpace.new
    authorize @office_space
  end

  def create
    @office_space = OfficeSpace.new(office_space_params)
    @office_space.owner = current_user
    authorize @office_space

    if @office_space.save
      redirect_to office_space_path(@office_space)
    else
      render :new
    end
  end

  def edit
    @office_space = OfficeSpace.find(params[:id])
    authorize @office_space
  end

  def update
    @office_space = OfficeSpace.find(params[:id])
    authorize @office_space

    if @office_space.update(office_space_params)
      redirect_to office_space_path(@office_space)
    else
      render :edit
    end
  end

  def destroy
    @office_space = OfficeSpace.find(params[:id])
    authorize @office_space

    @office_space.destroy
    redirect_to my_offices_path
  end

  def search
    @office_spaces = OfficeSpace.where("address ILIKE ?", "%#{params[:office_space][:address]}%")
    authorize @office_spaces
  end

  private

  def office_space_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:office_space).permit(:name, :address, :description, :price, :photo, :nearest_station)
  end
end
