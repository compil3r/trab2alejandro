class CreateProdutos < ActiveRecord::Migration[6.1]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.decimal :valor
      t.string :descricao

      t.timestamps
    end
  end
end
