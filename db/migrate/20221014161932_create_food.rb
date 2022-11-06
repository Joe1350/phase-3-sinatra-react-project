class CreateFood < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :calories
      t.integer :fat
      t.integer :fiber
      t.integer :day_id
    end
  end
end
