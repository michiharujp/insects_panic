class CreateInsects < ActiveRecord::Migration[5.1]
  def change
    create_table :insects do |t|
      t.string :name
      t.string :filename

      t.timestamps
    end
  end
end
