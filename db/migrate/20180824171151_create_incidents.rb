class CreateIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |table|
      table.string :name, default: "", null: false
      table.references :incident_commander, index: true, foreign_key: { to_table: :users }
      table.timestamps
    end
  end
end
