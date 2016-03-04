class CreateRespuesta < ActiveRecord::Migration
  def change
    create_table :respuesta do |t|
      t.integer :palabra
      t.integer :usuario
      t.string :respuesta
      t.integer :clasificacion

      t.timestamps null: false
    end
  end
end
