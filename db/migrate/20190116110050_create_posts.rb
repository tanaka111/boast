class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text         :text, null: false
      t.references   :genre
      t.timestamps   null: true
    end
  end
end
