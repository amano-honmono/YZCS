class CreateContests < ActiveRecord::Migration[5.0]
  def change
    create_table :contests do |t|
      t.string :contest_name
      t.datetime :start_time
      t.datetime :ending_time
      t.timestamps
    end
  end
end
