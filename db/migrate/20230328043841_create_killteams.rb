class CreateKillteams < ActiveRecord::Migration[7.0]
  def change
    create_table :killteams do |t|
      t.string :name
      t.text :description
      t.integer :requisition
      t.integer :asset_cap
      t.string :base
      t.string :keyword

      t.timestamps
    end
  end
end
