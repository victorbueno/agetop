class Spot < ActiveRecord::Base
  has_attached_file :pdf, :url => '/system/:class/:attachment/:id/:style/:filename'
  
  paginates_per 25
  
  validates_presence_of :pdf
end
