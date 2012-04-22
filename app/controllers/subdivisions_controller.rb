class SubdivisionsController < ApplicationController
  # GET /subdivisions
  # GET /subdivisions.json
  def index
    @subdivisions = Subdivision.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subdivisions }
    end
  end

  # GET /subdivisions/1
  # GET /subdivisions/1.json
  def show
    @subdivision = Subdivision.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subdivision }
    end
  end

  # GET /subdivisions/new
  # GET /subdivisions/new.json
  def new
    @subdivision = Subdivision.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subdivision }
    end
  end

  # GET /subdivisions/1/edit
  def edit
    @subdivision = Subdivision.find(params[:id])
  end

  # POST /subdivisions
  # POST /subdivisions.json
  def create
    @subdivision = Subdivision.new(params[:subdivision])

    respond_to do |format|
      if @subdivision.save
        format.html { redirect_to @subdivision, notice: 'Subdivision was successfully created.' }
        format.json { render json: @subdivision, status: :created, location: @subdivision }
      else
        format.html { render action: "new" }
        format.json { render json: @subdivision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subdivisions/1
  # PUT /subdivisions/1.json
  def update
    @subdivision = Subdivision.find(params[:id])

    respond_to do |format|
      if @subdivision.update_attributes(params[:subdivision])
        format.html { redirect_to @subdivision, notice: 'Subdivision was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @subdivision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subdivisions/1
  # DELETE /subdivisions/1.json
  def destroy
    @subdivision = Subdivision.find(params[:id])
    @subdivision.destroy

    respond_to do |format|
      format.html { redirect_to subdivisions_url }
      format.json { head :no_content }
    end
  end
end
