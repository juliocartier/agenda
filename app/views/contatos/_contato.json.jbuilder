json.extract! contato, :id, :nome, :endereco, :email, :dataNascimento, :created_at, :updated_at
json.url contato_url(contato, format: :json)
