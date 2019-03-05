class RemoveOtherwiseFromGenres < ActiveRecord::Migration[5.2]
  def change
    remove_column :genres, :otherwise, :string
  end
end
