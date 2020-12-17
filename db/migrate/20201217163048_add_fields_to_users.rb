class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :cpf, :string
    add_column :users, :tipo_doc, :string
    add_column :users, :num_doc, :string
    add_column :users, :expedidor, :string
    add_column :users, :nome_completo, :string
    add_column :users, :profissao, :string
    add_column :users, :nascimento, :date
    add_column :users, :sexo, :string
    add_column :users, :telefone, :string
    add_column :users, :cep, :string
    add_column :users, :complemento, :string
  end
end
