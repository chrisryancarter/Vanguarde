class CreateStaticCarousels < ActiveRecord::Migration
  def change
    create_table :static_carousels do |t|
      t.string :image

      t.timestamps
    end
  end
end
