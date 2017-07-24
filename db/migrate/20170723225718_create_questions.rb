class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :name
      t.text :body
      t.belongs_to :author

      t.timestamps
    end
  end
end
