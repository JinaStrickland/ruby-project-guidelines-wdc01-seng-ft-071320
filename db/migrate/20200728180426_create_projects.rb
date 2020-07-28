class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer :designers_id
      t.integer :clients_id
      t.text :name
      t.text :category
      t.text :size
      t.text :location
    end
  end
end
