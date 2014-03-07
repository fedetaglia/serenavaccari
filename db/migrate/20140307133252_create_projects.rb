class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :location
      t.integer :year
      t.string :note
    end
  end
end
