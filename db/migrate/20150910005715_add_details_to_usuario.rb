class AddDetailsToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :educ, :string
    add_column :usuarios, :carrera, :string
    add_column :usuarios, :gradoobt, :string
  end
end
