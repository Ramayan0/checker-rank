class AssessmentsController < ApplicationController

    #GET /assessments
    def index
      assessments = Assessment.all
      render json: assessments, status: :ok
    end

    # POST /assessments
    def create
      assessment = Assessment.create!(assessment_params)
      render json: assessment, status: :created
    end

    private

    #Only allow a trusted parameter "white list" through.
    def assessment_params
      params.permit(:title, :timeLimit, questions: [:type, :question, :choices => []])
    end
end
