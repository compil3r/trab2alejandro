json.extract! cliente, :id, :nome, :data_nascimento, :profissao, :email, :sexo, :endereco_id, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
