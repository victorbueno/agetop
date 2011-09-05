class Link < ActiveRecord::Base
  belongs_to :block
  belongs_to :page
  belongs_to :post
  has_attached_file :image
end
