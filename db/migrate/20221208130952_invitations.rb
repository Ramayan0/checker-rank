class Invitations < ActiveRecord::Migration[7.0]
  def change
    create_table :invitations do |t|
      t.integer :assessment_id
      t.jsonb :students

      t.timestamps
    end
  end
end
