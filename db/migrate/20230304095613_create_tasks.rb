class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :short_description
      t.references :category, null: true, foreign_key: true

      t.timestamps
    end
  end
end
