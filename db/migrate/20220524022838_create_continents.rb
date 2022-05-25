class CreateContinents < ActiveRecord::Migration[7.0]
  def change
    create_table :continents do |t|
      t.string :picture
      t.string :denomination
      t.timestamps
    end
  end
end
