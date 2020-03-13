class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :question
      t.string :choice1
      t.string :choice2
      t.string :choice3
      t.string :education

      t.timestamps
    end
  end
end
