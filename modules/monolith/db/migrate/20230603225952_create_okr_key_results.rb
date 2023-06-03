class CreateOkrKeyResults < ActiveRecord::Migration[7.0]
  def change
    create_table :okr_key_results do |t|
      t.belongs_to :okr, null: false, foreign_key: true
      t.belongs_to :metric, null: false, foreign_key: true
      t.float :expected
      t.float :actual

      t.timestamps
    end
  end
end
