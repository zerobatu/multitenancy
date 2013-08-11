class CreatePostulants < ActiveRecord::Migration
  def change
    create_table :postulants do |t|
      t.string :cv_path

      t.timestamps
    end
  end
end
