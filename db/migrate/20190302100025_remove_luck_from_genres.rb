class RemoveLuckFromGenres < ActiveRecord::Migration[5.2]
  def change
    remove_column :genres, :luck, :string
  end
end
