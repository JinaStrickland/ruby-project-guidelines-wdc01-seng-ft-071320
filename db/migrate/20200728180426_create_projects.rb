class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer :designer_id
      t.integer :client_id
      t.text :name
      t.text :category
      t.text :size
      t.text :location
    end
  end
end
