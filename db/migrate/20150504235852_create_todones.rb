class CreateTodones < ActiveRecord::Migration
  def change
    create_table :todones do |t|
      t.text :tasklist

      t.timestamps null: false
    end
    add_index :todones, :tasklist
  end
end
