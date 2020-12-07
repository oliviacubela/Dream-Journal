class CreateThemes < ActiveRecord::Migration[6.0]
  def change
    create_table :themes do |t|
      t.string :name
      t.text :description
      t.integer :theme_id

      t.timestamps
    end
  end
end
