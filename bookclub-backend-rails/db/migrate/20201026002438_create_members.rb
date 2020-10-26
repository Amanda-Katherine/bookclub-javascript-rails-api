class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.references :book_group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
