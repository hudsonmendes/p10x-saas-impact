class CreateManagers < ActiveRecord::Migration[7.0]
  def change
    create_table :managers do |t|
      t.belongs_to :manager, null: false, foreign_key: { to_table: 'people' }
      t.belongs_to :managed, null: false, foreign_key: { to_table: 'people' }

      t.timestamps
    end
  end
end
