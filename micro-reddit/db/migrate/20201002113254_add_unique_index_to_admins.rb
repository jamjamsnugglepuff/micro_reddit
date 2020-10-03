class AddUniqueIndexToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_index :users, [:id], unique: true
    add_index :posts, [:id], unique: true
    add_index :comments, [:id], unique: true
    add_index :forms, [:id], unique: true
    add_index :admins, [:id], unique: true
    add_index :admins, [:form_id, :user_id], unique: true
  end
end
