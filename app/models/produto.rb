class Produto < ApplicationRecord
    has_many :pedido_produtos, dependent: :destroy
end
