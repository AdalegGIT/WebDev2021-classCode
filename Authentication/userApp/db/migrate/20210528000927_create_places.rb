class CreatePlaces < ActiveRecord::Migration[6.1]
  def change
    create_table :places do |t|
      t.text :name
      t.text :desc
      t.integer :user_id

      t.timestamps
    end
  end
end
