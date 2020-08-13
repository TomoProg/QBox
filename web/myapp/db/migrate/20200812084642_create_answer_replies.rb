class CreateAnswerReplies < ActiveRecord::Migration[6.0]
  def change
    create_table :answer_replies do |t|
      t.references :answer, null: false, foreign_key: true
      t.text :contents, null: false
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
