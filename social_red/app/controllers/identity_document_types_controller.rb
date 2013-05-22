class IdentityDocumentTypesController < ApplicationController
  # GET /identity_document_types
  # GET /identity_document_types.json
  def index
    @identity_document_types = IdentityDocumentType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @identity_document_types }
    end
  end

  # GET /identity_document_types/1
  # GET /identity_document_types/1.json
  def show
    @identity_document_type = IdentityDocumentType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @identity_document_type }
    end
  end

  # GET /identity_document_types/new
  # GET /identity_document_types/new.json
  def new
    @identity_document_type = IdentityDocumentType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @identity_document_type }
    end
  end

  # GET /identity_document_types/1/edit
  def edit
    @identity_document_type = IdentityDocumentType.find(params[:id])
  end

  # POST /identity_document_types
  # POST /identity_document_types.json
  def create
    @identity_document_type = IdentityDocumentType.new(params[:identity_document_type])

    respond_to do |format|
      if @identity_document_type.save
        format.html { redirect_to @identity_document_type, notice: 'Identity document type was successfully created.' }
        format.json { render json: @identity_document_type, status: :created, location: @identity_document_type }
      else
        format.html { render action: "new" }
        format.json { render json: @identity_document_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /identity_document_types/1
  # PUT /identity_document_types/1.json
  def update
    @identity_document_type = IdentityDocumentType.find(params[:id])

    respond_to do |format|
      if @identity_document_type.update_attributes(params[:identity_document_type])
        format.html { redirect_to @identity_document_type, notice: 'Identity document type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @identity_document_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /identity_document_types/1
  # DELETE /identity_document_types/1.json
  def destroy
    @identity_document_type = IdentityDocumentType.find(params[:id])
    @identity_document_type.destroy

    respond_to do |format|
      format.html { redirect_to identity_document_types_url }
      format.json { head :no_content }
    end
  end
end
