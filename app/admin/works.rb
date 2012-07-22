ActiveAdmin.register Work do
  
  index do
    column :title
    # column "Featured Image" do |post|
    #   image_tag post.image
    # end
    column :posted_at do |post|
      post.created_at.getlocal.strftime("%b %e, %Y @ %l:%M%p")
    end
    default_actions
  end

  form :partial => 'form'

end
