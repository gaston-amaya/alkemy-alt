class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :picture
      t.string :denomination
      t.float :population
      t.float :land_size
      t.references :continent, null: false, foreign_key: true
      t.timestamps
     
    end
  end
end
