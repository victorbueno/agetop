module ApplicationHelper
  
  def get_link(link)
    if link.page.present?
      return link_to link.title, page_path(link.page.id)
    end
    
    if link.post.present?
      return link_to link.title, post_path(link.post.id)
    end
    
    return link_to link.title, link.url
  end

end
