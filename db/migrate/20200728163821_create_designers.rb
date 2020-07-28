class CreateDesigners < ActiveRecord::Migration[5.2]
  def change

    create_table :designers do |t|
      t.text :name
      t.text :title
      t.text :specialty
    end
  end
end
