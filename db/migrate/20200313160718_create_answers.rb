class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.belongs_to :games
      t.string :response

      t.timestamps
    end
  end
end
