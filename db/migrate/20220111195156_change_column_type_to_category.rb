class ChangeColumnTypeToCategory < ActiveRecord::Migration[6.1]
  def change
    rename_column :flowers, :type, :category
  end
end
