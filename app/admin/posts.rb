ActiveAdmin.register Post do

  menu :label => "News"

  scope :all, :default => true
  scope :published
  scope :drafts

  index do
    column :title
    column :published do |post|
      status_tag post.status
    end
    # column "Featured Image" do |post|
    #   image_tag post.image
    # end
    column :posted_at do |post|
      post.created_at.getlocal.strftime("%b %e, %Y @ %l:%M%p")
    end
    default_actions
  end

  filter :title
  filter :body, :label => "Body"
  filter :created_at
  filter :updated_at

  # config.clear_action_items!

  # form :partial => 'form'
  form :html => {:multipart => true} do |f|
    f.inputs "New Post" do
      f.input :title, :label => false, :input_html => {:placeholder => "Title"}
      # f.input :published_at, :label => "Publish Post At"
      # f.input :category
      f.input :image, :label => false, :as => :file#, :hint => f.template.image_tag(f.object.image.url)
      f.hidden_field :image_cache
      f.input :body, :label => false, :input_html => { :placeholder => "Body..", :class => "wysiwyg" }
      f.input :snippet, :label => false, :input_html => { :placeholder => "Snippet", :rows => 2, :class => "wysiwyg" }
      f.input :published
    end
    f.buttons
  end
  
end
