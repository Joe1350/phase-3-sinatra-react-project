class CreateDay < ActiveRecord::Migration[6.1]
  def change
    create_table :days do |t|
      t.string :date
    end
  end
end
