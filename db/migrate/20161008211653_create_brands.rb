class CreateBrands < ActiveRecord::Migration[5.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.integer :medicine_id

      t.timestamps
    end
  end
end
