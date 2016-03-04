class AddDetailsToCuestionario < ActiveRecord::Migration
  def change
    add_column :cuestionarios, :respuestas, :integer
  end
end
