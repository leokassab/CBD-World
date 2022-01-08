class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :integer
    add_column :users, :adress, :string
    add_column :users, :zip_code, :integer
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :merchant, :boolean
    add_column :users, :vat_number, :string
    add_column :users, :kbis, :string
    add_column :users, :siret, :string
    add_column :users, :compagny_name, :string
  end
end
