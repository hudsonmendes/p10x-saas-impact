class CreateOkrs < ActiveRecord::Migration[7.0]
  def change
    create_table :okrs do |t|
      t.belongs_to :parent_id, null: false, foreign_key: { to_table: 'okrs' }
      t.string :objective
      t.integer :allocation
      t.integer :allocation_scale_in_days
      t.belongs_to :owner, null: false, foreign_key: { to_table: 'people' }
      t.integer :state
      t.boolean :archived

      t.timestamps
    end
  end
end
