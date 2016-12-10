class AddUsuarioToAtividade < ActiveRecord::Migration[5.0]
  create_table :atividades_usuarios, id: false do |t|
      t.belongs_to :atividade, index: true
      t.belongs_to :usuario, index: true
    end
end
