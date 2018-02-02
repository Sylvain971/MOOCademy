class CreateLessons < ActiveRecord::Migration[5.1]
  def change

  	#ajout d'une foreign key et d'un index pour améliore les perfs (bonne pratique)
    create_table :lessons do |t|
      t.string :title
      t.text :body
      t.integer :course_id
      t.timestamps
    end

    add_index :lessons, :course_id
    add_foreign_key :lessons, :courses
  end
end
