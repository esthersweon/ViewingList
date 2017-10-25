class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.integer :tmdb_id
      t.string :title
      t.string :release_date

      t.timestamps
    end
  end
end
