class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.references :patient, null: false, foreign_key: true
      t.string :name, null: false, default: ''
      t.string :category, null: false, default: ''
      t.string :ndc, null: false, default: ''
      t.integer :qty, null: false
      t.integer :price, null: false
      t.text :instructions, null: false, default: ''
      t.timestamps
    end
  end
end
