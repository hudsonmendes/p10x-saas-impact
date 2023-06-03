class CreateDomains < ActiveRecord::Migration[7.0]
  def change
    create_table :domains do |t|
      t.string :name
      t.integer :role_min_level
      t.belongs_to :owner, null: false, foreign_key: { to_table: 'people' }

      t.timestamps
    end
  end
end
