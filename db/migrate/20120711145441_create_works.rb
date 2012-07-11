class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :featured_image
      t.string :title
      t.text :subtext
      t.text :fulltext
      t.text :project_scope
      t.text :credits
      t.text :season
      t.boolean :selected
      t.string :logo

      t.timestamps
    end
  end
end
