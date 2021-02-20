class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.references :book_group, null: false, foreign_key: true, default: 0

      t.timestamps
    end
  end
end
