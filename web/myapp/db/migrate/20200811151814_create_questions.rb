class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :title, limit: 80, null:false
      t.text :contents, null:false
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
