require 'spec_helper'

describe "CreatePosts" do
  it "creates a new post" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    visit new_admin_post_path
    if page.has_selector? '.logged_out'
      fill_in "admin_user[email]", :with => "admin@example.com"
      fill_in "admin_user[password]", :with => "password"
      click_button "Login"
    end
    fill_in "post_title", :with => "Test post"
    fill_in "post_body", :with => "Test post body content"
    fill_in "post_snippet", :with => "Post snippet"
    click_button "Create Post"
  end
end
