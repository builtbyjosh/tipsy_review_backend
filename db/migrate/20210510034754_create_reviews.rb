class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :name
      t.text :comment
      t.integer :rating, :default => 0
      t.integer :brewery_id

      t.timestamps
    end
  end
end
