class Review < ActiveRecord::Base
  belongs_to :equipment
  has_attached_file :pdf, :url => '/system/:class/:attachment/:id/:style/:filename'
  
  validates_presence_of :equipment, :pdf
end
