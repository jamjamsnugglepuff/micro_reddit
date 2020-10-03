class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      t.text :description
      t.string :name
      t.timestamps
    end
  end
end
