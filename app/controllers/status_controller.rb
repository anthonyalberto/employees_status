class StatusController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.where("id != ?", current_user.id)
    @statuses = Status.all
  end

  def update
    current_user.status_id = params[:status]
    if current_user.save
      render json: {status: "success"}
    else
      render json: {status: "error"}
    end
  end
end
