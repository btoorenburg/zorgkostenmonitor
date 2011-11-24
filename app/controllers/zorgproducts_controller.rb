class ZorgproductsController < ApplicationController
  # GET /zorgproducts
  # GET /zorgproducts.json
  def index
    @zorgproducts = Zorgproduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @zorgproducts }
    end
  end

  # GET /zorgproducts/1
  # GET /zorgproducts/1.json
  def show
    @zorgproduct = Zorgproduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @zorgproduct }
    end
  end

  # GET /zorgproducts/new
  # GET /zorgproducts/new.json
  def new
    @zorgproduct = Zorgproduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @zorgproduct }
    end
  end

  # GET /zorgproducts/1/edit
  def edit
    @zorgproduct = Zorgproduct.find(params[:id])
  end

  # POST /zorgproducts
  # POST /zorgproducts.json
  def create
    @zorgproduct = Zorgproduct.new(params[:zorgproduct])

    respond_to do |format|
      if @zorgproduct.save
        format.html { redirect_to @zorgproduct, notice: 'Zorgproduct was successfully created.' }
        format.json { render json: @zorgproduct, status: :created, location: @zorgproduct }
      else
        format.html { render action: "new" }
        format.json { render json: @zorgproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /zorgproducts/1
  # PUT /zorgproducts/1.json
  def update
    @zorgproduct = Zorgproduct.find(params[:id])

    respond_to do |format|
      if @zorgproduct.update_attributes(params[:zorgproduct])
        format.html { redirect_to @zorgproduct, notice: 'Zorgproduct was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @zorgproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zorgproducts/1
  # DELETE /zorgproducts/1.json
  def destroy
    @zorgproduct = Zorgproduct.find(params[:id])
    @zorgproduct.destroy

    respond_to do |format|
      format.html { redirect_to zorgproducts_url }
      format.json { head :ok }
    end
  end
end
