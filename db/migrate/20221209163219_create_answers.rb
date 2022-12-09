class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.string :message
      t.boolean :correct
      t.boolean :incorrect
      t.timestamps
    end
  end
end
