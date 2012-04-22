class ClassificationsController < ApplicationController

  # GET /classifications/1
  # GET /classifications/1.json
  def show
    @classification = Classification.find(params[:id])
    @primary_activities = @classification.primary_activities

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @classification }
    end
  end
  
end
