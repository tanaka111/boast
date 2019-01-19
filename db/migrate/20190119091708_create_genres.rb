class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.string       :luck
      t.string       :love
      t.string       :everyday
      t.string       :otherwise
      t.references   :post
      t.timestamps
    end
  end
end
