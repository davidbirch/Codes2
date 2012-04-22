class PagesController < ApplicationController
  
  def home
    @divisions = Division.all
  end
  
  def a_to_z
    
    @divisions = Division.all
    
    @divisions.each do |division|
      division.subdivisions = Subdivision.joins(:division).where("divisions.id = ?",division.id)
      division.subdivisions.each do |subdivision|
        subdivision.groups = Group.joins(:subdivision => :division).where("subdivisions.id = ?",subdivision.id)      
        subdivision.groups.each do |group|
          group.classifications = Classification.joins(:group => {:subdivision => :division}).where("groups.id = ?",group.id)
        end
      end     
    end   
  end
  
  
  
end
