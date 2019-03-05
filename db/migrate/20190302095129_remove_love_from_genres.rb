class RemoveLoveFromGenres < ActiveRecord::Migration[5.2]
  def change
    remove_column :genres, :love, :string
  end
end
