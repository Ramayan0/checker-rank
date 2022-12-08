class CreateAssessment < ActiveRecord::Migration[7.0]
  def change
    create_table :assessments do |t|
      t.string :title
      t.integer :timeLimit
      t.jsonb :questions

      t.timestamps
    end
  end
end
