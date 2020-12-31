class CreateHelpRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :help_records do |t|
      t.references :help_content, null: false, foreign_key: true
      t.integer :times
      t.string :quality

      t.timestamps
    end
  end
end
