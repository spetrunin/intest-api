class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.float :rating
      t.string :idimdb, index: true, uniq: true
      t.json :meta

      t.timestamps
    end
  end
end
