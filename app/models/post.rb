class Post < ActiveRecord::Base
  paginates_per 25
  
  def to_param
    "#{id}-#{title.parameterize}"
  end
end
