class CreateMedicines < ActiveRecord::Migration[5.0]
  def change
    create_table :medicines do |t|
      t.string :name
      t.integer :score

      t.timestamps

      add_index :medicines, [:name], uniqueness: true
    end
  end
end
