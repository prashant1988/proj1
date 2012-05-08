class CreateScfs < ActiveRecord::Migration
  def change
    create_table :scfs do |t|
      t.string :name
      t.integer :age
      t.string :users,:avatar

      t.timestamps
    end
  end
end
