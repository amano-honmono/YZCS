class AddIndexToContestsName < ActiveRecord::Migration[5.0]
  def change
    add_index :contests, :contest_name, unique: true
  end
end
