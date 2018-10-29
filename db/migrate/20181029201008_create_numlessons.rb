class CreateNumlessons < ActiveRecord::Migration[5.2]
  def change
    create_table :numlessons do |t|
      t.string :brief

      t.timestamps
    end
  end
end
