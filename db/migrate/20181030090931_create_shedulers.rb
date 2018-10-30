class CreateShedulers < ActiveRecord::Migration[5.2]
  def change
    create_table :shedulers do |t|
      t.integer :dayweek_id
      t.string :numlesson_id
      t.integer :lesson_id
      t.string :startlesson
      t.string :endlesson

      t.timestamps
    end
  end
end
