class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.text :name
      t.text :sector
      t.text :location
    end
  end
end
