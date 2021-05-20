class CreateSlides < ActiveRecord::Migration[6.1]
  def change
    create_table :slides do |t|
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
