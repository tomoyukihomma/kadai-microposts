class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :user_id, foreign_key: true
      t.integer :micropost_id, foreign_key: { to_table: :user_id }

      t.timestamps
      
      t.index [:user_id, :micropost_id], unique: true
    end
  end
end