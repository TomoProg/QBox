class CreateBestAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :best_answers do |t|
      t.references :question, null: false, foreign_key: true
      t.references :answer, null: false, foreign_key: true

      t.timestamps
    end
    add_index :best_answers, :question_id, unique: true, name: 'index_best_answer_question_unique'
  end
end
