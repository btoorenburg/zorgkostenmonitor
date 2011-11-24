class ZorgproductgroepsController < ApplicationController
  # GET /zorgproductgroeps
  # GET /zorgproductgroeps.json
  def index
    @zorgproductgroeps = Zorgproductgroep.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @zorgproductgroeps }
    end
  end

  # GET /zorgproductgroeps/1
  # GET /zorgproductgroeps/1.json
  def show
    @zorgproductgroep = Zorgproductgroep.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @zorgproductgroep }
    end
  end

  # GET /zorgproductgroeps/new
  # GET /zorgproductgroeps/new.json
  def new
    @zorgproductgroep = Zorgproductgroep.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @zorgproductgroep }
    end
  end

  # GET /zorgproductgroeps/1/edit
  def edit
    @zorgproductgroep = Zorgproductgroep.find(params[:id])
  end

  # POST /zorgproductgroeps
  # POST /zorgproductgroeps.json
  def create
    @zorgproductgroep = Zorgproductgroep.new(params[:zorgproductgroep])

    respond_to do |format|
      if @zorgproductgroep.save
        format.html { redirect_to @zorgproductgroep, notice: 'Zorgproductgroep was successfully created.' }
        format.json { render json: @zorgproductgroep, status: :created, location: @zorgproductgroep }
      else
        format.html { render action: "new" }
        format.json { render json: @zorgproductgroep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /zorgproductgroeps/1
  # PUT /zorgproductgroeps/1.json
  def update
    @zorgproductgroep = Zorgproductgroep.find(params[:id])

    respond_to do |format|
      if @zorgproductgroep.update_attributes(params[:zorgproductgroep])
        format.html { redirect_to @zorgproductgroep, notice: 'Zorgproductgroep was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @zorgproductgroep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zorgproductgroeps/1
  # DELETE /zorgproductgroeps/1.json
  def destroy
    @zorgproductgroep = Zorgproductgroep.find(params[:id])
    @zorgproductgroep.destroy

    respond_to do |format|
      format.html { redirect_to zorgproductgroeps_url }
      format.json { head :ok }
    end
  end
end
