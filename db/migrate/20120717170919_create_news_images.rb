class CreateNewsImages < ActiveRecord::Migration
  def change
    create_table :news_images do |t|
      t.string :image
      t.references :post

      t.timestamps
    end
    add_index :news_images, :post_id
  end
end
