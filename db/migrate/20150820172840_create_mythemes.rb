class CreateMythemes < ActiveRecord::Migration
  def change
    create_table :mythemes do |t|
      t.string :name

      t.timestamps
    end
  end
end
