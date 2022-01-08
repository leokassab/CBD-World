class AddReferenceToFlowers < ActiveRecord::Migration[6.1]
  def change
    add_reference :flowers, :user, index:true
  end
end
