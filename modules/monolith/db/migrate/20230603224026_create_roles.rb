class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string :public_name
      t.string :internal_name
      t.string :acronym
      t.integer :level

      t.timestamps
    end
  end
end
