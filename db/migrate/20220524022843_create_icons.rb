class CreateIcons < ActiveRecord::Migration[7.0]
  def change
    create_table :icons do |t|
      t.string :picture
      t.string :denomination
      t.float :height
      t.text :story
      t.references :city, null: false, foreign_key: true
      t.timestamps
    end
  end
end
