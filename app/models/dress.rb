class Dress < ActiveRecord::Base
  attr_accessible :source, :title, :brand, :sizing, :image, :price, :fans, 
  :fabric, :neck_type, :sleeve_type, :skirt_type, :skirt_length
  
  #lets me filter by each thingy, putting parameters in the URL
  scope :by_brand, proc { |brand| where(:brand => brand) }
  scope :by_sizing, proc { |sizing| where(:sizing => sizing) }
  scope :by_fabric, proc { |fabric| where(:fabric => fabric) }
  scope :by_necktype, proc { |neck_type| where(:neck_type => neck_type) }
  scope :by_sleevetype, proc { |sleeve_type| where(:sleeve_type => sleeve_type) }
  scope :by_skirttype, proc { |skirt_type| where(:skirt_type => skirt_type) }
  scope :by_skirtlength, proc { |skirt_length| where(:skirt_length => skirt_length) }

# add embellisments column


end
