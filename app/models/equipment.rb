class Equipment < ActiveRecord::Base
  has_many :spots
  has_many :reviews
  
  paginates_per 25
  
  validates_presence_of :name
end
