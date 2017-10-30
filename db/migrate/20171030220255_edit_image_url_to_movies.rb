class EditImageUrlToMovies < ActiveRecord::Migration[5.1]
  def change
    change_column_default :movies, :image_url, "https://www.classicposters.com/images/nopicture.gif"
  end
end
