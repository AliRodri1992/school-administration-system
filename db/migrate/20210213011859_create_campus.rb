class CreateCampus < ActiveRecord::Migration[6.1]
  def change
    create_table :campus do |t|
      t.string :code
      t.string :name

      t.timestamps
      t.timestamp :deleted_at
    end
    add_index :campus, :deleted_at
  end
end
