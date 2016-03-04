class CreatePalabras < ActiveRecord::Migration
  def change
    create_table :palabras do |t|
      t.string :palabra
      t.integer :cuestionario

      t.timestamps null: false
    end
  end
end
