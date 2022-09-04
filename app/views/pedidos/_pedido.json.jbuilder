json.extract! pedido, :id, :cliente, :observacoes, :data, :status, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
