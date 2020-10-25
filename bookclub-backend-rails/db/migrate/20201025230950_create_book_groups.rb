class CreateBookGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :book_groups do |t|
      t.string :members
      t.string :name

      t.timestamps
    end
  end
end
