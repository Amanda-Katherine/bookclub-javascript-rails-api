class CreateGatherings < ActiveRecord::Migration[6.0]
  def change
    create_table :gatherings do |t|
      t.string :host
      t.string :date
      t.string :address
      t.string :time

      t.timestamps
    end
  end
end
