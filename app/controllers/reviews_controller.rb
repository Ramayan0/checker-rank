class ReviewsController < ApplicationController
    def index
        reviews = Review.all
        render json: reviews, status: :ok
      end

      # GET /answer
      def show
        review = Review.find(params[:id])
        render json: answer, status: :ok
      end
  
      # POST /answer
      def create
        review = Review.create!(review_params)
        render json: review, status: :created
      end
  
      private
  
      def review_params
        params.permit(:message, :user_id, :assessment_id)
      end
end
