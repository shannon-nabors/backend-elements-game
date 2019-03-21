class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.references :user, foreign_key: true
      t.string :mode
      t.integer :correct
      t.integer :total

      t.timestamps
    end
  end
end
