class CreateFuncaos < ActiveRecord::Migration
  def change
    create_table :funcaos do |t|
      t.string :tipo
      t.float :salario
      t.integer :ch

      t.timestamps null: false
    end
  end
end
