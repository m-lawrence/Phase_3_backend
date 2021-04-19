class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.references :hike, null: false, foreign_key: true
      t.string :description
      t.integer :rating

      t.timestamps
    end
  end
end
