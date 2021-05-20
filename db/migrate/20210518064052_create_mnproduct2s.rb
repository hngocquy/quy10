class CreateMnproduct2s < ActiveRecord::Migration[6.1]
  def change
    create_table :mnproduct2s do |t|
      t.string :name_pro
      t.string :cate_pro
      t.string :price_pro
      t.text :desc_pro

      t.timestamps
    end
  end
end
