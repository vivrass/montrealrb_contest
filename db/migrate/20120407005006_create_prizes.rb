class CreatePrizes < ActiveRecord::Migration
  def change
    create_table :prizes do |t|
      t.string :name
      t.text :description
      t.integer :number
      t.integer :image_id

      t.timestamps
    end

    create_table :images do |t|
      t.string :name
      t.string :mime_type
      t.binary :data

      t.timestamps
    end
  end
end
