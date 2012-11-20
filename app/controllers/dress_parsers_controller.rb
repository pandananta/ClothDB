class DressParsersController < ApplicationController

  # GET /dress_parsers/new
  # GET /dress_parsers/new.json
  def new
    @dress_parser = DressParser.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dress_parser}
    end
  end


  # POST /dress_parsers
  # POST /dress_parsers.json
  def create
    DressParser.parse_and_create_dresses params[:dress_parser][:spreadsheet]
    redirect_to root_path
  end
end
