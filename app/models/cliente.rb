class Cliente < ApplicationRecord
  belongs_to :endereco
  has_many :pedidos, dependent: :destroy
  accepts_nested_attributes_for :endereco
  validates :nome, presence: true
end
