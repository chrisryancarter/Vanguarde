class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :video
      t.string :featured_image
      t.string :title
      t.text :subtext
      t.text :fulltext

      t.timestamps
    end
  end
end
