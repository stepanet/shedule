class CreateShedulers < ActiveRecord::Migration[5.2]
  def change
    create_table :shedulers do |t|
      t.integer :dayid
      t.string :numlesson
      t.integer :lessonid
      t.string :startlesson
      t.string :endlesson

      t.timestamps
    end
  end
end
