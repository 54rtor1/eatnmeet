class CreateDinings < ActiveRecord::Migration[6.1]
  def change
    create_table :dinings do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.time :time
      t.string :category

      t.timestamps
    end
  end
end
