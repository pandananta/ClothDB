class DressParsersController < ApplicationController

  # GET /dress_parsers/new
  # GET /dress_parsers/new.json
  def new
    @dress_parser = DressParser.new
  end


  # POST /dress_parsers
  # POST /dress_parsers.json
  def create
    DressParser.parse_and_create_dresses params[:dress_parser][:spreadsheet]
  end
end
