class AddColumnsToPets < ActiveRecord::Migration
  def change
    add_column :pets, :specie, :integer, null: false
    add_column :pets, :genre, :integer, null: false
    add_column :pets, :vaccine, :integer, null: false
    add_column :pets, :antiparasitic, :integer, null: false
    add_column :pets, :health, :integer, null: false
  end
end
