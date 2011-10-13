class Page < ActiveRecord::Base
  belongs_to :page
  
  def to_param
    "#{id}-#{title.parameterize}"
  end
  
end
