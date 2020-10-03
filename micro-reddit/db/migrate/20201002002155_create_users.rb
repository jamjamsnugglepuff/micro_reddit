class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :rating, default: 0
      t.string :user_name
      t.string :password
      t.string :email_address
      t.string :address
      t.string :city
      t.string :country
      t.string :first_name
      t.string :last_name
      t.string :about
      t.date :date_of_birth
      t.integer :gender
      t.timestamps
    end
  end
end
