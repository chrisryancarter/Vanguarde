class AddLookbookToWorks < ActiveRecord::Migration
  def change
    add_column :works, :lookbook, :string
  end
end
