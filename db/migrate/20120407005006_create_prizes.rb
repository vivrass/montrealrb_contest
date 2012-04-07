class CreatePrizes < ActiveRecord::Migration
  def change
    create_table :prizes do |t|
      t.string :name
      t.string :image
      t.text :description
      t.integer :number

      t.timestamps
    end
  end
end
