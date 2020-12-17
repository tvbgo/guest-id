class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :cpf, :string, null: false
    add_column :users, :tipo_doc, :string, null: false
    add_column :users, :num_doc, :string, null: false
    add_column :users, :expedidor, :string, null: false
    add_column :users, :nome_completo, :string, null: false
    add_column :users, :profissao, :string, null: false
    add_column :users, :nascimento, :date, null: false
    add_column :users, :sexo, :string, null: false
    add_column :users, :telefone, :string, null: false
    add_column :users, :cep, :string, null: false
    add_column :users, :complemento, :string, null: false
  end
end
