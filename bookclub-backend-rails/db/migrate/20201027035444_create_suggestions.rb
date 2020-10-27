class CreateSuggestions < ActiveRecord::Migration[6.0]
  def change
    create_table :suggestions do |t|
      t.references :book_group, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.integer :vote, default: 0
    
      t.timestamps
    end
  end
end
