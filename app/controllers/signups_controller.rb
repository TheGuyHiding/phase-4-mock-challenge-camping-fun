class SignupsController < ApplicationController

    def create
        singup = Signup.create!(camper_params)
        render json: signup
    end

    def signup_params
        params.permit(:time, :camper_id, :activity_id)
    end 

end