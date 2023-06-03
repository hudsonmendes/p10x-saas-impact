class CreateMetrics < ActiveRecord::Migration[7.0]
  def change
    create_table :metrics do |t|
      t.string :name
      t.integer :data_type
      t.string :example
      t.integer :role_min_level

      t.timestamps
    end
  end
end
