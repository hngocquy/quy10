class CreateMnproducts < ActiveRecord::Migration[6.1]
  def change
    create_table :mnproducts do |t|
      t.string :name_pro
      t.string :cate_pro
      t.string :price_pro
      t.text :desc_pro

      t.timestamps
    end
  end
end
