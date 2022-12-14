class UsersController < ApplicationController

    # GET /users
    def index
        user = User.all
        render json: user, status: :ok
    end
    

    # POST /signup
    def create
        user = User.create(user_params)
        if user.valid?
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
        end
    end

    # GET /me
    def show
        user = User.find_by(id: session[:user_id])
        if user
            render json: user, status: :ok
        else
            render json: {errors: "Not authorised"}, status: :unauthorized
        end
    end

    private
    def user_params
        params.permit(:username, :email, :password, :student, :mentor)
    end
end
