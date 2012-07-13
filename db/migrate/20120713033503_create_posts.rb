class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :snippet
      t.text :body
      t.string :image
      t.string :video
      t.boolean :published

      t.timestamps
    end
  end
end
