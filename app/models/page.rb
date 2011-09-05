class Page < ActiveRecord::Base
  belongs_to :page
  
  def to_param
    "#{self.id}-#{self.title.parameterize}"
  end
end
