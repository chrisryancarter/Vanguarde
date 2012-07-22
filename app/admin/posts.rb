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

  form :partial => 'form'
  
end
