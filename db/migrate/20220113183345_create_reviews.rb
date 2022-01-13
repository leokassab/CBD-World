class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :grade
      t.text :comment
      t.references :user, null: false, foreign_key: true
      t.references :flowers, null: false, foreign_key: true

      t.timestamps
    end
  end
end
