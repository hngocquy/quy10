class CreateOders < ActiveRecord::Migration[6.1]
  def change
    create_table :oders do |t|
      t.text :subtotal
      t.text :total

      t.timestamps
    end
  end
end
