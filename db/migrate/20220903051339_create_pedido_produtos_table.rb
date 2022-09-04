class CreatePedidoProdutosTable < ActiveRecord::Migration[6.1]
  def change
    create_table :pedido_produtos do |t|
      t.references :pedido, null: false, foreign_key: true
      t.references :produto, null: false, foreign_key: true
      t.timestamps
    end
  end
end
