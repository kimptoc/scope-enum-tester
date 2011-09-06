class CreateWidgets < ActiveRecord::Migration
  def change
    create_table :widgets do |t|
      t.string :name
      t.integer :size
      t.integer :category_id

      t.timestamps
    end
  end
end
