require 'spreadsheet'
Spreadsheet.client_encoding = 'UTF-8'

class DressParser < ActiveRecord::Base
	attr_accessor :spreadsheet #creates 2 methods: getter and setter
	attr_accessible :spreadsheet
	
	

	def self.parse_and_create_dresses spreadsheet_file
		#parses file
		#creates dresses from each parsing
		#returns an array of dresses?
		dress_attribute_array = self.parse_dress_spreadsheet spreadsheet_file
		dress_array = self.make_dresses_from_array dress_attribute_array
	end

	def self.parse_dress_spreadsheet spreadsheet_file
		#loads file
		#parses file into and array of hashes with the dress attributes from each row
		#returns array  E.G [{source: 1, name: 'bigdress'}, {source: 2, name: 'mediumdress'}, {source: 3, name: 'littledress'}]
	
		# @workbook = Spreadsheet.open("../../Desktop/STAGIN dress spreadsheet.xls")
		
		@workbook = Spreadsheet.open(spreadsheet_file)
		@worksheet = @workbook.worksheet(0)
		dress_attribute_array = []
		keys = @worksheet.row(0)

		keys.each_with_index do |cell, i|
  			keys[i]=cell.downcase.tr(" ", "_")
  		end

		1.upto(@worksheet.last_row_index) do |index|
  			# .row(index) will return the row which is a subclass of Array
  			row = @worksheet.row(index)
  			dress_attributes = {}
  			row.each_with_index do |cell, i|
  				dress_attributes[keys[i].to_sym] = cell
  			end
  			dress_attribute_array << dress_attributes
  		end
  		return dress_attribute_array 
	end

	def self.make_dresses_from_array dress_attribute_array
		#makes a Dress object from each hash of attributes in the array
		#returns an array of Dress objects
		dress_array = []
		dress_attribute_array.each do |dress_attrs|
			dress_array << Dress.create(dress_attrs) 
		end
	end
	
end