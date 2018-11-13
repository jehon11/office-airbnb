class ReviewsController < ApplicationController
  def create
    @office_space = OfficeSpace.find(params[:office_space_id])
    @review = Review.new(review_params)
    @review.office_space = @office_space
    @review.user = current_user
    if @review.save
      redirect_to office_space_path(@office_space)
    else
      render 'office_spaces/show'
    end
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
