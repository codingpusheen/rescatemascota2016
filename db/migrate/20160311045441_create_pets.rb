class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name, null: false
      t.integer :age, null: false

      t.timestamps null: false
    end
  end
end
