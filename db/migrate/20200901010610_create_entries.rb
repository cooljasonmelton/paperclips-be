class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.text :text
      t.string :word_count
      t.string :current_goal
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
