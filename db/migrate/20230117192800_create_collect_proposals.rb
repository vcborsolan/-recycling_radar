class CreateCollectProposals < ActiveRecord::Migration[7.0]
  def change
    create_table :collect_proposals do |t|
      t.references :item, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.datetime :collection_date
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
