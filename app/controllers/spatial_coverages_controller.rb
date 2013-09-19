class SpatialCoveragesController < ApplicationController
  # GET /spatial_coverages
  # GET /spatial_covearages.json
  def index
    @spatial_coverages = SpatialCoverage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spatial_coverages }
    end
  end

  # GET /spatial_coverages/1
  # GET /spatial_coverages/1.json
  def show
    @spatial_coverage = SpatialCoverage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @spatial_coverage }
    end
  end

  # GET /spatial_coverages/new
  # GET /spatial_coverages/new.json
  def new
    @spatial_coverage = SpatialCoverage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @spatial_coverage}
    end
  end

  # GET /spatial_coverages/1/edit
  def edit
    @spatial_coverage = SpatialCoverage.find(params[:id])
  end

  # POST /spatial_coverages
  # POST /spatial_coverages.json
  def create
    @spatial_coverage = SpatialCoverage.new(params[:spatial_coverage])

    respond_to do |format|
      if @spatial_coverage.save
        format.html { redirect_to @spatial_coverage, notice: 'Spatial Coverage was successfully created.' }
        format.json { render json: @spatial_coverage, status: :created, location: @spatial_coverage }
      else
        format.html { render action: "new" }
        format.json { render json: @spatial_coverage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spatial_coverages/1
  # PUT /spatial_coverages/1.json
  def update
    @spatial_coverage = SpatialCoverage.find(params[:id])

    respond_to do |format|
      if @spatial_coverage.update_attributes(params[:spatial_coverage])
        format.html { redirect_to @spatial_coverage, notice: 'Spatial Coverage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @spatial_coverage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spatial_coverages/1
  # DELETE /spatial_coverages/1.json
  def destroy
    @spatial_coverages = SpatialCoverages.find(params[:id])
    @spatial_coverages.destroy

    respond_to do |format|
      format.html { redirect_to spatial_coverage_url }
      format.json { head :no_content }
    end
  end
end

