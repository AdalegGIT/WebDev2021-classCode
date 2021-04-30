class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.string :title
      t.string :url
      t.string :desc

      t.timestamps
    end
  end
end
