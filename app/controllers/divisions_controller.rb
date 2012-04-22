class DivisionsController < ApplicationController

  # GET /divisions/1
  # GET /divisions/1.json
  def show
    @division = Division.find(params[:id])
    
    @subdivisions = Subdivision.joins(:division).where("divisions.slug = ?",params[:id])
    # this is equivalent to
    # @subdivisions = @division.subdivisions
    
    @subdivisions.each do |subdivision|
      subdivision.groups = Group.joins(:subdivision => :division).where("subdivisions.id = ?",subdivision.id)      
       subdivision.groups.each do |group|
        group.classifications = Classification.joins(:group => {:subdivision => :division}).where("groups.id = ?",group.id)
       end
     end
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @division }
    end
  end  
  
end
