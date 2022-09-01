class ReviewsController < ApplicationController
  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect profile_path(@profile)
    else
    render 'profiles/show', status: :unprocessable_entity
   end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :raiting)
  end
end
