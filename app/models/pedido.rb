class Pedido < ApplicationRecord
    belongs_to :cliente
    has_many :pedido_produtos, dependent: :destroy
    accepts_nested_attributes_for :pedido_produtos
    validates_presence_of :cliente_id, :data

    # total 
    def total
        total = 0
        self.pedido_produtos.each do |pedido_produto|
            total += pedido_produto.produto.valor
        end
        return total
    end
end
