class CreatePrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :programs do |t|
      t.string :name
      t.references :clients, foreign_key: true
      t.references :trainers, foreign_key: true

      t.timestamps
    end
  end
end
