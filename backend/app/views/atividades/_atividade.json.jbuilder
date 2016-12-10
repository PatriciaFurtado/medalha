json.extract! atividade, :id, :titulo, :descricao, :created_at, :updated_at
json.url atividade_url(atividade, format: :json)