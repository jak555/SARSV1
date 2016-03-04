class CreateCuestionarios < ActiveRecord::Migration
  def change
    create_table :cuestionarios do |t|
      t.string :nombre
      t.string :prefijo
      t.string :desc

      t.timestamps null: false
    end
  end
end
