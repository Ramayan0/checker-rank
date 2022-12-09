class StatisticsController < ApplicationController
    # GET allassessments
    def assessments
        assessments = Assessment.count
        render json: assessments, status: :ok
    end

    # GET allStudents
    def students
        students = User.where(student: true).count
        render json: students, status: :ok
    end

    # GET allinvitations
    def inivites
        invites = Invitation.count
        render json: invites, status: :ok
    end

    def test
        usrs = User.all.where(student: true)
        render json: usrs, status: :ok
    end
    

end
