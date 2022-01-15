class ChangeColumnFlowersIdToUser < ActiveRecord::Migration[6.1]
  def change
    rename_column :reviews, :flowers_id, :flower_id
  end
end
