class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |table|
      table.string :content, default: "", null: false
      table.references :author, index: true, foreign_key: { to_table: :users }
      table.references :incident, index: true, foreign_key: { to_table: :incidents }
      table.timestamps
    end
  end
end
