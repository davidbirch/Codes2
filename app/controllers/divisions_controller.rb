class DivisionsController < ApplicationController
  

  # GET /divisions/1
  # GET /divisions/1.json
  def show
    @division = Division.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @division }
    end
  end

  
  
end
