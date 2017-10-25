class CreateDirectors < ActiveRecord::Migration[5.1]
  def change
    create_table :directors do |t|
      t.integer :tmdb_id
      t.string :name

      t.timestamps
    end
  end
end
