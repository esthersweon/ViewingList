class CreateListmovies < ActiveRecord::Migration[5.1]
  def change
    create_table :listmovies do |t|
      t.belongs_to :list, foreign_key: true
      t.belongs_to :movie, foreign_key: true

      t.timestamps
    end
  end
end
