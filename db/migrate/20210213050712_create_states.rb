class CreateStates < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.string :code
      t.string :name
      t.references :country, foreign_key: true

      t.timestamps
      t.timestamp :deleted_at
    end
    add_index :states, :deleted_at
  end
end
