class CreateUniversities < ActiveRecord::Migration[6.1]
  def change
    create_table :universities do |t|
      t.string :name
      t.string :motto

      t.timestamps
      t.timestamp :deleted_at, index: true
    end
  end
end
