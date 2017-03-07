class AddIndexToProblemsUrl < ActiveRecord::Migration[5.0]
  def change
    add_index :problems, :problem_url, unique: true
  end
end
