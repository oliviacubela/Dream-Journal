class CreateDreams < ActiveRecord::Migration[6.0]
  def change
    create_table :dreams do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :theme_id

      t.timestamps
    end
  end
end
