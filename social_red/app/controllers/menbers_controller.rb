class MenbersController < ApplicationController
  # GET /menbers
  # GET /menbers.json
  def index
    @menbers = Menber.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @menbers }
    end
  end

  # GET /menbers/1
  # GET /menbers/1.json
  def show
    @menber = Menber.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @menber }
    end
  end

  # GET /menbers/new
  # GET /menbers/new.json
  def new
    @menber = Menber.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @menber }
    end
  end

  # GET /menbers/1/edit
  def edit
    @menber = Menber.find(params[:id])
  end

  # POST /menbers
  # POST /menbers.json
  def create
    @menber = Menber.new(params[:menber])

    respond_to do |format|
      if @menber.save
        format.html { redirect_to @menber, notice: 'Menber was successfully created.' }
        format.json { render json: @menber, status: :created, location: @menber }
      else
        format.html { render action: "new" }
        format.json { render json: @menber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /menbers/1
  # PUT /menbers/1.json
  def update
    @menber = Menber.find(params[:id])

    respond_to do |format|
      if @menber.update_attributes(params[:menber])
        format.html { redirect_to @menber, notice: 'Menber was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @menber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menbers/1
  # DELETE /menbers/1.json
  def destroy
    @menber = Menber.find(params[:id])
    @menber.destroy

    respond_to do |format|
      format.html { redirect_to menbers_url }
      format.json { head :no_content }
    end
  end
end
