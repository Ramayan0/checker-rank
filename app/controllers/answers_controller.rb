class AnswersController < ApplicationController
    def index
        answers = Answer.all
        render json: answers, status: :ok
      end

      # GET /answer
      def show
        answer = Answer.find(params[:id])
        render json: answer, status: :ok
      end
  
      # POST /answer
      def create
        answer = Answer.create!(answer_params)
        render json: answer, status: :created
      end
  
      private
  
      def answer_params
        params.permit(:message, :user_id, :assessment_id)
      end
end
