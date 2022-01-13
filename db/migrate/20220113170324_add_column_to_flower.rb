class AddColumnToFlower < ActiveRecord::Migration[6.1]
  def change
    add_column :flowers, :picture, :string
  end
end
