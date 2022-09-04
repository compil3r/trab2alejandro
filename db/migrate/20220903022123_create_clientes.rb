class CreateClientes < ActiveRecord::Migration[6.1]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.date :data_nascimento
      t.string :profissao
      t.string :email
      t.string :sexo
      t.references :endereco, null: false, foreign_key: true

      t.timestamps
    end
  end
end
