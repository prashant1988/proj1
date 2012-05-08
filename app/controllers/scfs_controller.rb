class ScfsController < ApplicationController
  # GET /scfs
  # GET /scfs.json
  def index
    @scfs = Scf.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scfs }
    end
  end

  # GET /scfs/1
  # GET /scfs/1.json
  def show
    @scf = Scf.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scf }
    end
  end

  # GET /scfs/new
  # GET /scfs/new.json
  def new
    @scf = Scf.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scf }
    end
  end

  # GET /scfs/1/edit
  def edit
    @scf = Scf.find(params[:id])
  end

  # POST /scfs
  # POST /scfs.json
  def create
    @scf = Scf.new(params[:scf])

    respond_to do |format|
      if @scf.save
        format.html { redirect_to @scf, notice: 'Scf was successfully created.' }
        format.json { render json: @scf, status: :created, location: @scf }
      else
        format.html { render action: "new" }
        format.json { render json: @scf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scfs/1
  # PUT /scfs/1.json
  def update
    @scf = Scf.find(params[:id])

    respond_to do |format|
      if @scf.update_attributes(params[:scf])
        format.html { redirect_to @scf, notice: 'Scf was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scfs/1
  # DELETE /scfs/1.json
  def destroy
    @scf = Scf.find(params[:id])
    @scf.destroy

    respond_to do |format|
      format.html { redirect_to scfs_url }
      format.json { head :no_content }
    end
  end
end
