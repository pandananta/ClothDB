class DressParsersController < ApplicationController
  # GET /dress_parsers
  # GET /dress_parsers.json


  # GET /dress_parsers/1
  # GET /dress_parsers/1.json
  def show
    @dress_parser = DressParser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dress_parser }
    end
  end

  # GET /dress_parsers/new
  # GET /dress_parsers/new.json
  def new
    @dress_parser = DressParser.new

    #upload file
    end
  end


  # POST /dress_parsers
  # POST /dress_parsers.json
  def create
    #pass file to model by calling model's parse method
  end
