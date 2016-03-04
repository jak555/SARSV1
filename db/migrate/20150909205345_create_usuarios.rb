class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.integer :edad
      t.boolean :sexo
      t.integer :estado
      t.integer :hijos
      t.integer :nacionalidad
      t.integer :nivel
      t.integer :universidad
      t.integer :semestre
      t.string :idu

      t.timestamps null: false
    end
  end
end
