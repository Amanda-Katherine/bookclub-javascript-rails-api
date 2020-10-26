class CreateGMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :g_members do |t|
      t.string :name
      t.string :password_digest

      t.timestamps
    end
  end
end
