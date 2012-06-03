class PagesController < ApplicationController
  
  def privacy
     @title = "ANZSIC Codes | Privacy Statement"
     @keywords = "ANZSIC, ANZSIC Code, ANZSIC Codes, Industry Classification, Industrial Classification, Australian Industry, Australia Industry, New Zealand Industry, Standard Industry Codes, Services"
  end
  
  def contact
    @title = "ANZSIC Codes | Contact Us"
    @keywords = "ANZSIC, ANZSIC Code, ANZSIC Codes, Industry Classification, Industrial Classification, Australian Industry, Australia Industry, New Zealand Industry, Standard Industry Codes, Services"
    
  end
  
  def attribution
    @title = "ANZSIC Codes | Attribution"
    @keywords = "ANZSIC, ANZSIC Code, ANZSIC Codes, Industry Classification, Industrial Classification, Australian Industry, Australia Industry, New Zealand Industry, Standard Industry Codes, Services"
    
  end
    
  def home
    @title = "ANZSIC Codes | Search for ANZSIC Codes"
    @keywords = "ANZSIC, ANZSIC Code, ANZSIC Codes, Industry Classification, Industrial Classification, Australian Industry, Australia Industry, New Zealand Industry, Standard Industry Codes, Services"
    
    @divisions = Division.all
  end
  
  def search
    @title = "ANZSIC Codes | Search"
    @keywords = "ANZSIC, ANZSIC Code, ANZSIC Codes, Industry Classification, Industrial Classification, Australian Industry, Australia Industry, New Zealand Industry, Standard Industry Codes, Services"
    
    if params[:query]
      # a search value exists
      
      @classifications = Classification.find_by_sql("SELECT * FROM classifications WHERE (classifications.description LIKE '%" + params[:query] + "%')")
      #@classifications = Classification.all
    else
      # no search value so don't get anything
      @classifications = nil
    end   
  end
  
  def a_to_z
    @title = "ANZSIC Codes | List all ANZSIC Codes"
    @keywords = "ANZSIC, ANZSIC Code, ANZSIC Codes, Industry Classification, Industrial Classification, Australian Industry, Australia Industry, New Zealand Industry, Standard Industry Codes, Services"
    
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
