RailsAdmin.config do |config|
  config.excluded_models = ["Ckeditor::Asset", "Ckeditor::AttachmentFile", "Ckeditor::Picture"]
  
  config.model Page do
    edit do
      field :title
      field :content, :text do
        ckeditor true
      end
      field :page
    end
  end
  
  config.model Post do
    edit do
      field :title
      field :content, :text do
        ckeditor true
      end
    end
  end
end