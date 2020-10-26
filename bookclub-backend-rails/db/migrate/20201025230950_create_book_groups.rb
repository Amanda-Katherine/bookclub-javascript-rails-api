class CreateBookGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :book_groups do |t|
      t.string :name
      t.string :password_digest
     

      t.timestamps
    end
  end
end
