class QuestionsController < ApplicationController
    def questions
        # assessment_id = params[:id]
        questions = Assessment.where(questions: true)
        render json: questions, status: :ok
    end
end
