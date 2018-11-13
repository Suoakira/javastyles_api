class CreateStyles < ActiveRecord::Migration[5.2]
  def change
    create_table :styles do |t|
      t.string :top_front_url
      t.string :top_back_url
      t.string :bottom_front_url
      t.string :bottom_back_url
      t.string :shoe_url
      t.integer :likes

      t.timestamps
    end
  end
end
