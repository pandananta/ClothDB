class DressesController < ApplicationController
  has_scope :by_brand
  has_scope :by_sizing
  has_scope :by_fabric
  has_scope :by_necktype
  has_scope :by_sleevetype
  has_scope :by_neckline
  has_scope :by_skirttype
  has_scope :by_skirtlength

  # GET /dresses
  # GET /dresses.json
  def index
    @dresses = apply_scopes(Dress).page(params[:page]).per(50)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dresses }
    end
  end

  # GET /dresses/1
  # GET /dresses/1.json
  def show
    @dress = Dress.find(params[:id])
    render :layout => false
  end

  # GET /dresses/new
  # GET /dresses/new.json
  def new
    @dress = Dress.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dress }
    end
  end

  # GET /dresses/1/edit
  def edit
    @dress = Dress.find(params[:id])
  end

  # POST /dresses
  # POST /dresses.json
  def create
    @dress = Dress.new(params[:dress])

    respond_to do |format|
      if @dress.save
        format.html { redirect_to @dress, notice: 'Dress was successfully created.' }
        format.json { render json: @dress, status: :created, location: @dress }
      else
        format.html { render action: "new" }
        format.json { render json: @dress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dresses/1
  # PUT /dresses/1.json
  def update
    @dress = Dress.find(params[:id])

    respond_to do |format|
      if @dress.update_attributes(params[:dress])
        format.html { redirect_to @dress, notice: 'Dress was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dresses/1
  # DELETE /dresses/1.json
  def destroy
    @dress = Dress.find(params[:id])
    @dress.destroy

    respond_to do |format|
      format.html { redirect_to dresses_url }
      format.json { head :no_content }
    end
  end
end
