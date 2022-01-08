class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.string :adress
      t.integer :zip_code
      t.string :city
      t.string :country
      t.boolean :merchant
      t.string :vat_number
      t.string :kbis
      t.string :siret
      t.string :compagny_name

      t.timestamps
    end
  end
end
