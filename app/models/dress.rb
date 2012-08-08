class Dress < ActiveRecord::Base
  attr_accessible :source, :title, :brand, :sizing, :image, :price, :fans, 
  :fabric, :neck_type, :sleeve_type, :neckline, :skirt_type, :skirt_length
  

  validates :title,  :presence => true
=begin
  validates :source,  :presence => true  
  validates :title,  :presence => true
  validates :brand,  :presence => true
  validates :sizing,  :presence => true
  validates :image,  :presence => true
  validates :price,  :presence => true
  validates :fans,  :presence => true
  validates :fabric,  :presence => true
  validates :neck_type,  :presence => true
  validates :sleeve_type,  :presence => true
  validates :neckline,  :presence => true
  validates :skirt_type,  :presence => true
  validates :skirt_length,  :presence => true
=end
end
