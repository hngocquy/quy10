class CreateManacates < ActiveRecord::Migration[6.1]
  def change
    create_table :manacates do |t|
      t.string :name_category
      t.text :desc

      t.timestamps
    end
  end
end
