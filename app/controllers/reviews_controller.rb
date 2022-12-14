class ReviewsController < ApplicationController
  before_action :set_review, only: %i[edit destroy]

  # GET /reviews
  def index
    @reviews = Review.all
  end

  # GET /reviews/1
  def show
    @review = Review.find(params[:id])
  end

  # GET /reviews/new
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews
  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to @restaurant, notice: "Review was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reviews/1
  def update
    if @review.update(review_params)
      redirect_to @review, notice: "Review was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /reviews/1
  def destroy
    @review.destroy
    redirect_to reviews_url, notice: "Review was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:rating, :content, :restaurant_id)
    end
end
