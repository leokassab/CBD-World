class CreateFlowers < ActiveRecord::Migration[6.1]
  def change
    create_table :flowers do |t|
      t.string :name
      t.decimal :price
      t.string :country
      t.string :type
      t.text :description
      t.decimal :cbd_ratio
      t.string :effect
      t.string :flavor
      t.decimal :weight

      t.timestamps
    end
  end
end
