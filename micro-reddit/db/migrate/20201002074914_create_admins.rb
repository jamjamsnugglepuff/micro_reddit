class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.references :form, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :admin_status
      t.timestamps
    end
  end
end
