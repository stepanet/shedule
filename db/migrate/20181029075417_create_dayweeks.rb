class CreateDayweeks < ActiveRecord::Migration[5.2]
  def change
    create_table :dayweeks do |t|
      t.string :brief

      t.timestamps
    end
  end
end
