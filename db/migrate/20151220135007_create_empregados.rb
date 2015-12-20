class CreateEmpregados < ActiveRecord::Migration
  def change
    create_table :empregados do |t|
      t.string :nome
      t.string :telefone
      t.string :endereco
      t.string :dataadm
      t.string :cpf
      t.string :rg
      t.references :cargo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
