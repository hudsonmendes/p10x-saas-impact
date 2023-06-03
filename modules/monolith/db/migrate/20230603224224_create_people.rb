class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :surname
      t.string :forenames
      t.string :pronouns
      t.belongs_to :role, null: false, foreign_key: true
      t.timestamp :hired_at
      t.timestamp :terminated_at

      t.timestamps
    end
  end
end
