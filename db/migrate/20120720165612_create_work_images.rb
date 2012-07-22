class CreateWorkImages < ActiveRecord::Migration
  def change
    create_table :work_images do |t|
      t.string :image
      t.references :work

      t.timestamps
    end
    add_index :work_images, :work_id
  end
end
