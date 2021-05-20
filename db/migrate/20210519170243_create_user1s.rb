class CreateUser1s < ActiveRecord::Migration[6.1]
  def change
    create_table :user1s do |t|
      t.string :name
      t.bigint :mobile
      t.string :email
      t.string :password_digest
      t.string :address

      t.timestamps
    end
    add_index :user1s, :email, unique: true
  end
end
