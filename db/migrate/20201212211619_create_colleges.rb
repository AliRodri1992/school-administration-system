class CreateColleges < ActiveRecord::Migration[6.1]
  def change
    create_table :colleges do |t|
      t.string :key
      t.string :name
      t.string :turn
      t.boolean :public, default: true

      t.timestamps
      t.timestamp :deleted_at
    end

    add_index :colleges, :deleted_at
  end
end
