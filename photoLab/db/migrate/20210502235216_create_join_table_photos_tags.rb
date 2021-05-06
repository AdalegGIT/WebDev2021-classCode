class CreateJoinTablePhotosTags < ActiveRecord::Migration[6.1]
  def change
    create_join_table :photos, :tags 
  end
end
