class CreateContestsProblems < ActiveRecord::Migration[5.0]
  def change
    create_table :contests_problems do |t|
      t.references :contest, index: true, null: false
      t.references :problem, index: true, null: false
    end
  end
end
