class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :weight
      t.integer :quantity
      t.integer :frequency, null: false, default: 0
      t.integer :status, null: false, default: 0
      t.references :category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
