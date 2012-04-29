class ClassificationsController < ApplicationController

  # GET /classifications/1
  # GET /classifications/1.json
  def show
    @classification = Classification.find(params[:id])
    @primary_activities = @classification.primary_activities

    @title = "ANZSIC Codes | "+ @classification.code + ": " + @classification.description
    @keywords = @classification.description+", "+"ANZSIC, ANZSIC Code, ANZSIC Codes, Industry Classification, Industrial Classification, Australian Industry, Australia Industry, New Zealand Industry, Standard Industry Codes, Services"

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @classification }
    end
  end
  
end
