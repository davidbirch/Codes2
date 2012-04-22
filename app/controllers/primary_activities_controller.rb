class PrimaryActivitiesController < ApplicationController
  # GET /primary_activities
  # GET /primary_activities.json
  def index
    @primary_activities = PrimaryActivity.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @primary_activities }
    end
  end

  # GET /primary_activities/1
  # GET /primary_activities/1.json
  def show
    @primary_activity = PrimaryActivity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @primary_activity }
    end
  end

  # GET /primary_activities/new
  # GET /primary_activities/new.json
  def new
    @primary_activity = PrimaryActivity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @primary_activity }
    end
  end

  # GET /primary_activities/1/edit
  def edit
    @primary_activity = PrimaryActivity.find(params[:id])
  end

  # POST /primary_activities
  # POST /primary_activities.json
  def create
    @primary_activity = PrimaryActivity.new(params[:primary_activity])

    respond_to do |format|
      if @primary_activity.save
        format.html { redirect_to @primary_activity, notice: 'Primary activity was successfully created.' }
        format.json { render json: @primary_activity, status: :created, location: @primary_activity }
      else
        format.html { render action: "new" }
        format.json { render json: @primary_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /primary_activities/1
  # PUT /primary_activities/1.json
  def update
    @primary_activity = PrimaryActivity.find(params[:id])

    respond_to do |format|
      if @primary_activity.update_attributes(params[:primary_activity])
        format.html { redirect_to @primary_activity, notice: 'Primary activity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @primary_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /primary_activities/1
  # DELETE /primary_activities/1.json
  def destroy
    @primary_activity = PrimaryActivity.find(params[:id])
    @primary_activity.destroy

    respond_to do |format|
      format.html { redirect_to primary_activities_url }
      format.json { head :no_content }
    end
  end
end
