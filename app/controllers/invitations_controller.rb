class InvitationsController < ApplicationController

    # GET /invitations
    def index
        invite = Invitation.all
        render json: invite, status: :ok
    end
    # POST /inivitations/create
    def create
        invitation = Invitation.new
        invitation.assessment_id = params[:assessment]
        invitation.students = params[:students]
        invitation.save
    end

end