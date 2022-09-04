class CreatePedidos < ActiveRecord::Migration[6.1]
  def change
    create_table :pedidos do |t|
      t.references :cliente, null: false, foreign_key: true
      t.string :observacoes
      t.date :data
      

      t.timestamps
    end
  end
end
