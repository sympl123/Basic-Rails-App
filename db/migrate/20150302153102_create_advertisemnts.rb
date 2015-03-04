class CreateAdvertisemnts < ActiveRecord::Migration
  def change
    create_table :advertisemnts do |t|
      t.string :title
      t.text :copy
      t.integer :price

      t.timestamps 
    end
  end
end
