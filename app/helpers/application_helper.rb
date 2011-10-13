module ApplicationHelper
  
  def get_link(link)
    if link.page.present?
      return link_to link.title, link.page
    end
    
    if link.post.present?
      return link_to link.title, link.post
    end
    
    return link_to link.title, link.url
  end
  
  def data_formatada(d)
    return d.strftime("%d/%m/%Y")
  end
  
  def hora_formatada(d)
    return d.strftime("%H:%M")
  end
  
  def wicked_pdf_stylesheet_link_tag(*sources)
      css_dir = "#{Rails.root.join('app', 'assets', 'stylesheets')}/"
      sources.collect { |source|
        new_path = css_dir + source
        "<style type='text/css'>#{File.read(new_path)}</style>"
      }.join("\n").html_safe
    end

    def wicked_pdf_image_tag(img, options={})
      image_tag "file://#{Rails.root.join('public')}#{img}", options
    end

    def wicked_pdf_javascript(jsfile, options={})
      javascript_src_tag "file://#{Rails.root.join('public')}#{jsfile}", options
    end

    def wicked_pdf_javascript_include_tag(*sources)
      sources.collect{ |source| wicked_pdf_javascript_src_tag(source, {}) }.join("\n").html_safe
    end

end
