class CreateProblems < ActiveRecord::Migration[5.0]
  def change
    create_table :problems do |t|
      t.string :problem_url

      t.timestamps
    end
  end
end
