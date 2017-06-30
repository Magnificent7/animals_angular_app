class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :leg_count
      t.text :description
      t.boolean :meat_eater

      t.timestamps
    end
  end
end
