class CreateHelpContents < ActiveRecord::Migration[6.1]
  def change
    create_table :help_contents do |t|
      t.string :name
      t.integer :unit_price

      t.timestamps
    end
  end
end
